#!/bin/sh
setxkbmap -v us
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
