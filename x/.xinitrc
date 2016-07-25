#!/bin/bash

# Set wallpaper.
xsetroot -solid '#002B36'

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
  trayer --widthtype request --transparent true --alpha 0 --tint 0x073642 --align right --edge bottom --height 26 --padding 0 --monitor primary &
  nm-applet &
  redshift-gtk &
} &

# Gnome Keyring is nice.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec xmonad
