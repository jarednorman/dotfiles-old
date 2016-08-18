#!/bin/bash

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

  # Start up things.
  nm-applet &
  unclutter &

  # Redshift has been starting before I get a network connection and can't
  # handle that gracefully... so.
  sleep 15
  redshift-gtk &

  autocutsel -fork
  autocutsel -selection PRIMARY -fork

  mpd $HOME/.config/mpd/mpd.conf
} &

# Gnome Keyring is nice.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec awesome
