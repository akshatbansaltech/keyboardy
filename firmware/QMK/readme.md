# keyboardy

QMK firmware for the Keyboardy macropad (4 keys + EC11 rotary encoder, XIAO RP2040).

* Keyboard Maintainer: [Akshat Bansal](https://github.com/akshatbansaltech)
* Hardware Supported: Keyboardy PCB
* Hardware Availability: [https://github.com/akshatbansaltech/keyboardy](https://github.com/akshatbansaltech/keyboardy)

Make example for this keyboard (after setting up your build environment):

    make keyboardy:default

Flashing example for this keyboard:

    make keyboardy:default:flash

See the [build environment setup](https://docs.qmk.fm/#/getting_started_build_tools) and the [make instructions](https://docs.qmk.fm/#/getting_started_make_guide) for more information. Brand new to QMK? Start with our [Complete Newbs Guide](https://docs.qmk.fm/#/newbs).

## Bootloader

Enter the bootloader in 3 ways:

* **Bootmagic reset**: Hold down the key at (0,0) in the matrix and plug in the keyboard
* **Physical reset button**: Briefly press the reset button on the XIAO
* **Keycode in layout**: Press the key mapped to `QK_BOOT` if it is available
