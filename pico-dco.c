#include <stdio.h>
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

const float BASE_NOTE = 440.0f;
const uint8_t RESET_PINS[NUM_VOICES] = {13, 8, 12, 9, 11, 10};
const uint8_t RANGE_PINS[NUM_VOICES] = {16, 19, 15, 18, 14, 17};
const uint8_t GATE_PINS[NUM_VOICES] = {2, 3, 4, 5, 6, 7};
const uint8_t VOICE_TO_PIO[NUM_VOICES] = {0, 0, 0, 0, 1, 1};
const uint8_t VOICE_TO_SM[NUM_VOICES] = {0, 1, 2, 3, 0, 1};
const uint16_t DIV_COUNTER = 1250;
uint8_t RANGE_PWM_SLICES[NUM_VOICES];
uint8_t NOTES[128];
uint32_t VOICES[NUM_VOICES];
uint32_t LED_BLINK_START = 0;
PIO pio[2] = {pio0, pio1};
uint8_t midi_serial_status = 0;

void init_sm(PIO pio, uint sm, uint offset, uint pin);
void set_frequency(PIO pio, uint sm, float freq);
float get_freq_from_midi_note(uint8_t note);
void led_blinking_task(void);
uint8_t get_free_voice();
void serial_midi_task();
void note_on(uint8_t note, uint8_t velocity);
void note_off(uint8_t note);

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

    while (1) {
        tud_task();
        if (uart_is_readable(uart0)) {
            serial_midi_task();
        }
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

void tud_midi_rx_cb(uint8_t itf) {   
    LED_BLINK_START = board_millis();
    board_led_write(true);

    uint8_t buff[4] = {0};

    if (tud_midi_available() > 3) {
        if (tud_midi_receive(buff)) {
            if (buff[1] == (0x90 | (MIDI_CHANNEL-1))) {
                note_on(buff[2], buff[3]);
            }

            if (buff[1] == (0x80 | (MIDI_CHANNEL-1))) {
                note_off(buff[2]);
            }

            tud_midi_read_flush();
        }
    }
}

void serial_midi_task() {
    uint8_t note, velocity;
    uint8_t data = uart_getc(uart0);

    LED_BLINK_START = board_millis();
    board_led_write(true);

    if (data >= 0x80 && data <= 0xEF) {
        midi_serial_status = data;
        if (midi_serial_status >= 0x80 && midi_serial_status <= 0x9F) {
            note = uart_getc(uart0);
            velocity = uart_getc(uart0);
        }
    } else {
        if (midi_serial_status >= 0x80 && midi_serial_status <= 0x9F) {
            note = data;
            velocity = uart_getc(uart0);
        }
    }

    if (midi_serial_status == (0x90 | (MIDI_CHANNEL-1))) {
        if (velocity > 0) {
            note_on(note, velocity);
        } else {
            note_off(note);
        }
    }

    if (midi_serial_status == (0x80 | (MIDI_CHANNEL-1))) {
        note_off(note);
    }
}

void note_on(uint8_t note, uint8_t velocity) {
    if (NOTES[note] > 0) return; // note already playing
    uint8_t voice_num = get_free_voice();
    NOTES[note] = voice_num;
    float freq = get_freq_from_midi_note(note);
    set_frequency(pio[VOICE_TO_PIO[voice_num]], VOICE_TO_SM[voice_num], freq);
    // amplitude adjustment
    pwm_set_chan_level(RANGE_PWM_SLICES[voice_num], pwm_gpio_to_channel(RANGE_PINS[voice_num]), (int)(DIV_COUNTER*(freq*0.00025f-1/(100*freq))));
    // gate on
    gpio_put(GATE_PINS[voice_num], 1);
}

void note_off(uint8_t note) {
    // gate off
    gpio_put(GATE_PINS[NOTES[note]], 0);
    VOICES[NOTES[note]] = 0;
    NOTES[note] = 0;
}

uint8_t get_free_voice() {
    uint32_t oldest_time = board_millis();
    uint8_t oldest_voice = 0;
    for (int i=0; i<NUM_VOICES; i++) {
        if (VOICES[i] == 0) {
            VOICES[i] = board_millis();
            return i;
        }
        if (VOICES[i]<oldest_time) {
            oldest_time = VOICES[i];
            oldest_voice = i;
        }
    }
    return oldest_voice;
}

void led_blinking_task(void) {
    if (board_millis() - LED_BLINK_START < 50) return;
    board_led_write(false);
}
