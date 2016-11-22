#!/bin/zsh

set -e

unclutter &
redshift &
xset m 0 0

if [ $(hostname -s) = "akedoman" ]; then
  togglekb norman
  synclient TouchpadOff=1
else
  togglekb qwerty
fi

autocutsel -fork
autocutsel -selection PRIMARY -fork &

exec awesome
