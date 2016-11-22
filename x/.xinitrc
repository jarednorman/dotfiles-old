#!/bin/zsh

set -e

pulseaudio --start
xrdb $HOME/.Xresources
xset m 0 0
sh $HOME/.xrandr.sh
autocutsel -fork
autocutsel -selection PRIMARY -fork
unclutter &
redshift &

if [ $(hostname -s) = "akedoman" ]; then
  togglekb norman
  synclient TouchpadOff=1
else
  togglekb qwerty
fi

# Lock after 30 minutes inactive
(while :; do
  sinac -w 1800 && slock
done) &

exec xmonad
