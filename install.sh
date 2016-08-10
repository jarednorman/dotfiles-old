#!/bin/sh
set -ex
mkdir -p ~/.config/beets
mkdir -p ~/.config/mpd
stow ag awesome bin git tmux vim music ruby x xmonad zsh -t ~
