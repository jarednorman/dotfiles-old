#!/bin/bash

# Set wallpaper.
xsetroot -solid '#000000'

# Disable touchpad.
synclient TouchpadOff=1

# Setup X stuff.
{
  xmodmap $HOME/.Xmodmap
  if [ $(hostname -s) = "baburuman" ]; then
    xmodmap $HOME/.Xmodmap.norman
  fi
  xset r rate 300 65
  sleep 4
  bash $HOME/.xrandr.sh

  # Start up things.
  trayer --widthtype request --transparent true --alpha 255 --tint 0xB7D2ED --align right --edge top --height 32 --padding 0 --monitor primary &
  nm-applet &
  redshift-gtk &
} &

# Gnome Keyring is nice.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec xmonad
