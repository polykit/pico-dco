# Raspberry Pi Pico DCO

This repository contains source code and schematics for a digitally controlled oscillator (DCO) which is driven by a Raspberry Pi Pico. It uses PIO to generate a highly accurate frequency which is controlled by MIDI USB. The analog oscillator part is based on the Juno 106 and generates sawtooth and square wave signal with a 10Vpp amplitude. Amplitude compensation is done by a smoothed PWM signal coming from the Pico.

This is how it sounds: [Ramp sample](https://soundcloud.com/polykit/pico-dco-ramp) [Pulse sample](https://soundcloud.com/polykit/pico-dco-pulse)

## Schematics

![Raspberry Pi Pico DCO](pico-dco.png)

## Installing (simple)

Press `BOOTSEL` button on the Pico while powering it with USB. Copy file `build/pico-dco.uf2` onto the USB mass storage device.

## Usage

After installing the Pico should register as USB MIDI device. The DCO listens to note on/note off messages on MIDI channel 1.

## Todo

- Add DIN MIDI input
- Add polyphony (up to 8 voices should be possible)
- Add velocity and pitch bend output (additional DAC needed)

## References

https://blog.thea.codes/the-design-of-the-juno-dco/

https://electricdruid.net/roland-juno-dcos/

https://www.youtube.com/watch?v=yYnQYF_Xa8g

https://github.com/raspberrypi/pico-examples/tree/master/pio/pwm

https://github.com/raspberrypi/pico-examples/tree/master/pio/pio_blink

https://github.com/raspberrypi/pico-examples/tree/master/pwm/hello_pwm

https://qiita.com/jamjam/items/f2fdd5c072ff348fd809

https://github.com/infovore/pico-example-midi

https://learn.sparkfun.com/tutorials/midi-tutorial/all
