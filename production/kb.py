import board

from kmk.kmk_keyboard import KMKKeyboard as _KMKKeyboard
from kmk.scanners import DiodeOrientation


class KMKKeyboard(_KMKKeyboard):
    col_pins = (board.GP27, board.GP26, board.GP4)
    row_pins = (board.GP29, board.GP28)

    diode_orientation = DiodeOrientation.COL2ROW
