#!/bin/zsh

set -e

{
  pulseaudio --start --daemonize
  xset m 0 0
  xrdb $HOME/.Xresources
  autocutsel -fork
  autocutsel -selection PRIMARY -fork &
  unclutter &
  redshift &
} &

if [ $(hostname -s) = "akedoman" ]; then
  togglekb norman
  synclient TouchpadOff=1
else
  togglekb qwerty
fi

exec xmonad
