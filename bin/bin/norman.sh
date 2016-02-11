#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
set -vx
setxkbmap -v norman
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
