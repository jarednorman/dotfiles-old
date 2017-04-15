#!/bin/zsh

set -e

>&2 echo "Setting screen layout..."
sh $HOME/.xrandr.sh

>&2 echo "Setting wallpaper..."
xsetroot -solid '#181818'

>&2 echo "Loading .Xresources..."
xrdb $HOME/.Xresources

>&2 echo "Setting mouse acceleration..."
xset m 0 0

>&2 echo "Configuring displays..."
sh $HOME/.xrandr.sh

>&2 echo "Enabling autocutsel..."
autocutsel -fork
autocutsel -selection PRIMARY -fork

>&2 echo "Starting unclutter..."
unclutter &

>&2 echo "Starting redshift..."
redshift &

>&2 echo "Setting keyboard layout..."
togglekb norman

>&2 echo "Starting screen locker..."
(while :; do
  sinac -w 1800 && slock
done) &

exec xmonad
