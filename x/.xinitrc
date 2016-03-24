#!/bin/bash

# Set wallpaper.
feh --bg-scale $HOME/.wallpaper

# Disable touchpad.
synclient TouchpadOff=1

# Setup keyboard layout.
xmodmap $HOME/.Xmodmap
xset r rate 300 65

# Gnome Keyring is nice.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Start up things.
trayer --widthtype request --transparent true --alpha 0 --tint 0xfdf6e5 --align right --edge top --height 26 --padding 2 --monitor primary &
nm-applet &
redshift-gtk &

exec xmonad
