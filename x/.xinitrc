#!/bin/zsh

set -e

echo "Starting PulseAudio..."
pulseaudio --start -D

echo "Setting screen layout..."
sh $HOME/.xrandr.sh

echo "Setting wallpaper..."
feh --bg-fill $HOME/.wallpaper.jpg

echo "Loading .Xresources..."
xrdb $HOME/.Xresources

echo "Setting mouse acceleration..."
xset m 0 0

echo "Configuring displays..."
sh $HOME/.xrandr.sh

echo "Enabling autocutsel..."
autocutsel -fork
autocutsel -selection PRIMARY -fork

echo "Starting unclutter..."
unclutter &

echo "Starting redshift..."
redshift &

echo "Setting keyboard layout..."
if [ $(hostname -s) = "akedoman" ]; then
  togglekb norman
  synclient TouchpadOff=1
else
  togglekb qwerty
fi

echo "Starting screen locker..."
(while :; do
  sinac -w 1800 && slock
done) &

exec xmonad
