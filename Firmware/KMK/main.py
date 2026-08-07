import board

from kb import KMKKeyboard
from kmk.keys import KC
from kmk.modules.encoder import EncoderHandler
from kmk.extensions.RGB import RGB

keyboard = KMKKeyboard()

# EC11 rotary encoder on GP2/GP1 - volume control, press to mute
encoder_handler = EncoderHandler()
encoder_handler.pins = ((board.GP2, board.GP1, None, False),)
keyboard.modules.append(encoder_handler)

# 2x WS2812B on GP3
rgb = RGB(pixel_pin=board.GP3, num_pixels=2)
keyboard.extensions.append(rgb)

# 4 switches (numpad layer, row-major)
keyboard.keymap = [[KC.P7, KC.P8, KC.P4, KC.P5, KC.P6]]

encoder_handler.map = [((KC.AUDIO_VOL_DOWN, KC.AUDIO_VOL_UP),)]

if __name__ == "__main__":
    keyboard.go()
