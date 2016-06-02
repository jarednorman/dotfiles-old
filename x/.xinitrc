#!/bin/bash

# Set wallpaper.
feh --bg-scale $HOME/.wallpaper

# Disable touchpad.
synclient TouchpadOff=1

# Setup X stuff.
{
  xmodmap $HOME/.Xmodmap
  xset r rate 300 65
  sleep 3
  xrandr --output DVI-D-0 --mode 1920x1080 --pos 3640x0 --rotate normal --output HDMI-0 --mode 2560x1440 --pos 1080x0 --rotate normal --output DVI-I-1 --mode 1920x1080 --pos 0x0 --rotate left --output DVI-I-0 --off --output DP-1 --off --output DP-0 --off
} &

# Gnome Keyring is nice.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Start up things.
trayer --widthtype request --transparent true --alpha 255 --tint 0xB7D2ED --align right --edge top --height 32 --padding 0 --monitor primary &
sleep 3
nm-applet &
redshift-gtk &

exec xmonad
