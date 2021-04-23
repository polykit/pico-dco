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

#define NUM_VOICES 1
const float BASE_NOTE = 440.0f;
const uint8_t OUT_PINS[NUM_VOICES] = {2};
const uint8_t RANGE_PINS[NUM_VOICES] = {3};
const uint8_t GATE_PINS[NUM_VOICES] = {4};
const uint16_t DIV_COUNTER = 1250;
uint8_t RANGE_PWM_SLICES[NUM_VOICES];
uint8_t NOTES[128];
uint32_t VOICES[NUM_VOICES];
uint32_t LED_BLINK_START = 0;
PIO pio[2] = {pio0, pio1};

void init_sm(PIO pio, uint sm, uint offset, uint pin);
void set_frequency(PIO pio, uint sm, float freq);
float get_freq_from_midi_note(uint8_t note);
void led_blinking_task(void);
uint8_t get_free_voice();

int main() {
    board_init();
    tusb_init();

    // use more accurate PWM mode for buck-boost converter
    gpio_init(23);
    gpio_set_dir(23, GPIO_OUT);
    gpio_put(23, 1);

    // pwm init
    for (int i=0; i<NUM_VOICES; i++) {
        gpio_set_function(RANGE_PINS[i], GPIO_FUNC_PWM);
        RANGE_PWM_SLICES[i] = pwm_gpio_to_slice_num(RANGE_PINS[i]);
        pwm_set_wrap(RANGE_PWM_SLICES[i], DIV_COUNTER);
        pwm_set_enabled(RANGE_PWM_SLICES[i], true);
    }

    // pio init
    for (int i=0; i<NUM_VOICES; i++) {
        uint offset = pio_add_program(pio[0], &frequency_program);
        init_sm(pio[0], i, offset, OUT_PINS[i]);
    }

    // gate gpio init
    for (int i=0; i<NUM_VOICES; i++) {
        gpio_init(GATE_PINS[i]);
        gpio_set_dir(GATE_PINS[i], GPIO_OUT);
    }

    while (1) {
        tud_task();
        led_blinking_task();
    }
}

void init_sm(PIO pio, uint sm, uint offset, uint pin) {
    init_sm_pin(pio, sm, offset, pin);
    pio_sm_set_enabled(pio, sm, true);
}

void set_frequency(PIO pio, uint sm, float freq) {
    pio_sm_put(pio, sm, clock_get_hz(clk_sys) / 2 / freq);
    pio_sm_exec(pio, sm, pio_encode_pull(false, false));
    pio_sm_exec(pio, sm, pio_encode_out(pio_y, 32));
}

float get_freq_from_midi_note(uint8_t note) {
    return pow(2, (note-69)/12.0f) * BASE_NOTE;
}

void tud_midi_rx_cb(uint8_t itf) {   
    uint8_t buff[4] = {0};

    if (tud_midi_available() > 3) {
        LED_BLINK_START = board_millis();
        board_led_write(true);

        if (tud_midi_receive(buff)) {
            if (buff[1] == 0x90) { // note on
                uint8_t note = buff[2];
                uint8_t voice_num = get_free_voice(); 
                NOTES[note] = voice_num;
                float freq = get_freq_from_midi_note(note);
                set_frequency(pio[0], voice_num, freq);
                // amplitude adjustment
                pwm_set_chan_level(RANGE_PWM_SLICES[voice_num], pwm_gpio_to_channel(RANGE_PINS[voice_num]), (int)(DIV_COUNTER*(freq*0.00025f-1/(100*freq))));
                // gate on
                gpio_put(GATE_PINS[voice_num], 1);
            }

            if (buff[1] == 0x80) { // note off
                // gate off
                uint8_t note = buff[2];
                gpio_put(GATE_PINS[NOTES[note]], 0);
            }

            tud_midi_read_flush();
        }
    }
}

void led_blinking_task(void) {
    if (board_millis() - LED_BLINK_START < 50) return;
    board_led_write(false);
}

uint8_t get_free_voice() {
    uint8_t voice = 0;
    VOICES[voice] = board_millis();
    return voice;
}
