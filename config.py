import sys
import os
import datetime

import pyauto
from keyhac import *

def configure(keymap):
    # --------------------------------------------------------------------
    # Text editer setting for editting config.py file

    # Setting with program file path (Simple usage)
    if 1:
        keymap.editor = "code"

    # Font
    keymap.setFont( "MS Gothic", 12 )

    # Theme
    keymap.setTheme("black")

    # --------------------------------------------------------------------
    keymap.replaceKey("(29)", "LCTRL") # 無変換（29）を 235
    keymap.replaceKey("(28)", "LSHIFT") # 変換（28）を 236

    keymap_global = keymap.defineWindowKeymap()
    keymap_global[ "LC-Comma"  ] = "F1"
    keymap_global[ "LC-Period"  ] = "F2"
    keymap_global[ "LC-1"  ] = "F3"
    keymap_global[ "LC-2"  ] = "F4"
    keymap_global[ "LC-3"  ] = "F5"
    keymap_global[ "LC-4"  ] = "F6"
    keymap_global[ "LC-5"  ] = "F7"
    # keymap_global[ "LC-F1"  ] = keymap.command_ReloadConfig
