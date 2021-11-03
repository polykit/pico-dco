#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"
#include "pico-dco.pio.h"
#include "hardware/pwm.h"
#include "bsp/board.h"
#include "tusb.h"
#include "hardware/uart.h"

#define NUM_VOICES 6
#define MIDI_CHANNEL 1

uint STACK_NOTES = 1;
float DETUNE_FACTOR = 0.01;
const float BASE_NOTE = 440.0f;
const uint8_t RESET_PINS[NUM_VOICES] = {13, 8, 12, 9, 11, 10};
const uint8_t RANGE_PINS[NUM_VOICES] = {16, 19, 15, 18, 14, 17};
const uint8_t GATE_PINS[NUM_VOICES] = {2, 3, 4, 5, 6, 7};
const uint8_t VOICE_TO_PIO[NUM_VOICES] = {0, 0, 0, 0, 1, 1};
const uint8_t VOICE_TO_SM[NUM_VOICES] = {0, 1, 2, 3, 0, 1};
const uint16_t DIV_COUNTER = 1250;
uint8_t RANGE_PWM_SLICES[NUM_VOICES];
uint32_t VOICES[NUM_VOICES];
uint8_t VOICE_NOTES[NUM_VOICES];
uint8_t NEXT_VOICE = 0;
uint32_t LED_BLINK_START = 0;
PIO pio[2] = {pio0, pio1};
uint8_t midi_serial_status = 0;
uint16_t midi_pitch_bend = 0x2000, last_midi_pitch_bend = 0x2000;

void init_sm(PIO pio, uint sm, uint offset, uint pin);
void set_frequency(PIO pio, uint sm, float freq);
float get_freq_from_midi_note(uint8_t note);
void led_blinking_task();
uint8_t get_free_voice();
void usb_midi_task();
void serial_midi_task();
void note_on(uint8_t note, uint8_t velocity);
void note_off(uint8_t note);
void pitch_bend_task();

int main() {
    board_init();
    tusb_init();

    // use more accurate PWM mode for buck-boost converter
    gpio_init(23);
    gpio_set_dir(23, GPIO_OUT);
    gpio_put(23, 1);

    // init serial midi
    uart_init(uart0, 31250);
    uart_set_fifo_enabled(uart0, true);
    gpio_set_function(0, GPIO_FUNC_UART);
    gpio_set_function(1, GPIO_FUNC_UART);

    // pwm init
    for (int i=0; i<NUM_VOICES; i++) {
        gpio_set_function(RANGE_PINS[i], GPIO_FUNC_PWM);
        RANGE_PWM_SLICES[i] = pwm_gpio_to_slice_num(RANGE_PINS[i]);
        pwm_set_wrap(RANGE_PWM_SLICES[i], DIV_COUNTER);
        pwm_set_enabled(RANGE_PWM_SLICES[i], true);
    }

    // pio init
    uint offset[2];
    offset[0] = pio_add_program(pio[0], &frequency_program);
    offset[1] = pio_add_program(pio[1], &frequency_program);
    for (int i=0; i<NUM_VOICES; i++) {
        init_sm(pio[VOICE_TO_PIO[i]], VOICE_TO_SM[i], offset[VOICE_TO_PIO[i]], RESET_PINS[i]);
    }

    // gate gpio init
    for (int i=0; i<NUM_VOICES; i++) {
        gpio_init(GATE_PINS[i]);
        gpio_set_dir(GATE_PINS[i], GPIO_OUT);
    }

    // init voices
    for (int i=0; i<NUM_VOICES; i++) {
        VOICES[i] = 0;
    }

    while (1) {
        tud_task();
        usb_midi_task();
        serial_midi_task();
        pitch_bend_task();
        led_blinking_task();
    }
}

void init_sm(PIO pio, uint sm, uint offset, uint pin) {
    init_sm_pin(pio, sm, offset, pin);
    pio_sm_set_enabled(pio, sm, true);
}

void set_frequency(PIO pio, uint sm, float freq) {
    uint32_t clk_div = clock_get_hz(clk_sys) / 2 / freq;
    if (freq == 0) clk_div = 0;
    pio_sm_put(pio, sm, clk_div);
    pio_sm_exec(pio, sm, pio_encode_pull(false, false));
    pio_sm_exec(pio, sm, pio_encode_out(pio_y, 32));
}

float get_freq_from_midi_note(uint8_t note) {
    return pow(2, (note-69)/12.0f) * BASE_NOTE;
}

void usb_midi_task() {
    if (tud_midi_available() < 4) return;

    uint8_t buff[4];

    LED_BLINK_START = board_millis();
    board_led_write(true);

    if (tud_midi_packet_read(buff)) {
        if (buff[1] == (0x90 | (MIDI_CHANNEL-1))) {
            if (buff[3] > 0) {
                note_on(buff[2], buff[3]);
            } else {
                note_off(buff[2]);
            }
        }

        if (buff[1] == (0x80 | (MIDI_CHANNEL-1))) {
            note_off(buff[2]);
        }

        if (buff[1] == (0xE0 | (MIDI_CHANNEL-1))) {
            midi_pitch_bend = buff[2] | (buff[3]<<7);
        }
    }
}

void serial_midi_task() {
    if (!uart_is_readable(uart0)) return;

    uint8_t lsb = 0, msb = 0;
    uint8_t data = uart_getc(uart0);

    LED_BLINK_START = board_millis();
    board_led_write(true);

    // cc status
    if (data >= 0xF0 && data <= 0xF7) {
        midi_serial_status = 0;
        return;
    }

    // realtime message
    if (data >= 0xF8 && data <= 0xFF) {
        return;
    }

    if (data >= 0x80 && data <= 0xEF) {
        midi_serial_status = data;
    }

    if (midi_serial_status >= 0x80 && midi_serial_status <= 0x90 ||
        midi_serial_status >= 0xE0 && midi_serial_status <= 0xEF) {
        lsb = uart_getc(uart0);
        msb = uart_getc(uart0);
    }

    if (midi_serial_status == (0x90 | (MIDI_CHANNEL-1))) {
        if (msb > 0) {
            note_on(lsb, msb);
        } else {
            note_off(lsb);
        }
    }

    if (midi_serial_status == (0x80 | (MIDI_CHANNEL-1))) {
        note_off(lsb);
    }

    if (midi_serial_status == (0xE0 | (MIDI_CHANNEL-1))) {
        midi_pitch_bend = lsb | (msb<<7);
    }
}

void note_on(uint8_t note, uint8_t velocity) {
    if (STACK_NOTES < 2) {
        for (int i=0; i<NUM_VOICES; i++) {
            if (VOICE_NOTES[i] == note) return; // note already playing
        }
    }
    for (int i=0; i<STACK_NOTES; i++) {
        uint8_t voice_num = get_free_voice();
        VOICES[voice_num] = board_millis();
        VOICE_NOTES[voice_num] = note;
        float freq = get_freq_from_midi_note(note);
        if (STACK_NOTES > 1) {
            freq = freq + (rand()%10) * DETUNE_FACTOR;
        }
        set_frequency(pio[VOICE_TO_PIO[voice_num]], VOICE_TO_SM[voice_num], freq);
        // amplitude adjustment
        pwm_set_chan_level(RANGE_PWM_SLICES[voice_num], pwm_gpio_to_channel(RANGE_PINS[voice_num]), (int)(DIV_COUNTER*(freq*0.00025f-1/(100*freq))));
        // gate on
        gpio_put(GATE_PINS[voice_num], 1);
    }
    last_midi_pitch_bend = 0;
}

void note_off(uint8_t note) {
    // gate off
    for (int i=0; i<NUM_VOICES; i++) {
        if (VOICE_NOTES[i] == note) {
            gpio_put(GATE_PINS[i], 0);
            VOICE_NOTES[i] = 0;
            VOICES[i] = 0;
        }
    }
}

uint8_t get_free_voice() {
    uint32_t oldest_time = board_millis();
    uint8_t oldest_voice = 0;

    for (int i=0; i<NUM_VOICES; i++) {
        uint8_t n = (NEXT_VOICE+i)%NUM_VOICES;

        if (VOICES[n] == 0) {
            NEXT_VOICE = (n+1)%NUM_VOICES;
            return n;
        }

        if (VOICES[i]<oldest_time) {
            oldest_time = VOICES[i];
            oldest_voice = i;
        }
    }

    NEXT_VOICE = (oldest_voice+1)%NUM_VOICES;
    return oldest_voice;
}

void pitch_bend_task() {
    if (midi_pitch_bend == 0x2000) return;

    if (midi_pitch_bend != last_midi_pitch_bend) {
        last_midi_pitch_bend = midi_pitch_bend;

        for (int i=0; i<NUM_VOICES; i++) {
            if (VOICE_NOTES[i] > 0) {
                float freq = get_freq_from_midi_note(VOICE_NOTES[i]);
                freq = freq-(freq*((0x2000-midi_pitch_bend)/67000.0f));
                set_frequency(pio[VOICE_TO_PIO[i]], VOICE_TO_SM[i], freq);
            }
        }
    }
}

void led_blinking_task() {
    if (board_millis() - LED_BLINK_START < 50) return;
    board_led_write(false);
}
