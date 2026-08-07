# Keyboardy

A 4-key macropad with a rotary encoder and RGB LEDs, built for the [Hackpad YSWS](https://hackpad.hackclub.com/).

Based on the example macropad from the official [hackclub/hackpad](https://github.com/hackclub/hackpad) repository.

## Features
- 4x Cherry MX switches
- 1x EC11 rotary encoder
- 2x WS2812B RGB LEDs
- Seeed XIAO controller
- OLED header

## Contents
- [PCB/Keyboardy.kicad_sch](PCB/Keyboardy.kicad_sch) — schematic
- [PCB/Keyboardy.kicad_pcb](PCB/Keyboardy.kicad_pcb) — board layout
- [CAD/Keyboardy-Case.step](CAD/Keyboardy-Case.step) — full case assembly
- [CAD/Keyboardy-main-body.stl](CAD/Keyboardy-main-body.stl) — case bottom
- [CAD/Keyboardy-top-cover.stl](CAD/Keyboardy-top-cover.stl) — case top
- [Firmware/KMK/main.py](Firmware/KMK/main.py) — KMK firmware
- [production/gerbers.zip](production/gerbers.zip) — PCB production files
- [libraries/](libraries/) — footprints used by the project
- [kicad_care_package/](kicad_care_package/) — XIAO and SK6812 symbols + footprints

## BOM
- 4x Cherry MX switches
- 4x DSA keycaps
- 5x 1N4148 DO-35 diodes
- 2x WS2812B LEDs
- 1x EC11 rotary encoder
- 1x Seeed XIAO (RP2040)
- 1x 0.91" 128x32 OLED
- 5x M3 heatset inserts + bolts
- 3D printed case (2 parts) + 2 acrylic plates

## Schematic

<img src="assets/Keyboardy_SCH.png" alt="Schematic" width="400"/>

## PCB

<img src="assets/Keyboardy_PCB.png" alt="PCB" width="400"/>

## CAD

<img src="assets/Keyboardy_CAD.png" alt="CAD" width="400"/>

## Credits

This project is based on the example macropad from the official [hackclub/hackpad](https://github.com/hackclub/hackpad) repository. The PCB layout, CAD design, and reference firmware from that repo were a huge help in building Keyboardy.

Huge thank you to Hack Club and everyone behind the [Hackpad YSWS](https://hackpad.hackclub.com/) for the parts, the guides, and the whole program — genuinely could not have built this without them. 🧡
