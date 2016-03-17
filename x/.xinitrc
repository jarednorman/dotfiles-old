#!/bin/sh

synclient TouchpadOff=1

xmodmap $HOME/.Xmodmap

exec xmonad
