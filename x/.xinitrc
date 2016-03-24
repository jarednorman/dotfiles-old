#!/bin/bash

# Set wallpaper.
feh --bg-scale $HOME/.wallpaper

# Disable touchpad.
synclient TouchpadOff=1

# Setup keyboard layout.
xmodmap $HOME/.Xmodmap

# Gnome Keyring is nice.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Start up things.
trayer --widthtype request --transparent true --alpha 0 --tint 0xeee8d5 --align right --height 20 --padding 2 --monitor primary &
nm-applet &
redshift-gtk &

exec xmonad
