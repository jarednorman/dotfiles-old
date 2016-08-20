#!/bin/bash

# Stuff I don't care about waiting for
{
  nm-applet &
  unclutter &

  # Redshift has been starting before I get a network connection and can't
  # handle that gracefully... so.
  sleep 15
  redshift-gtk &
} &

synclient TouchpadOff=1

if [ $(hostname -s) = "baburuman" ]; then
  togglekb norman
else
  togglekb qwerty
fi

autocutsel -fork
autocutsel -selection PRIMARY -fork

mpd $HOME/.config/mpd/mpd.conf

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec awesome
