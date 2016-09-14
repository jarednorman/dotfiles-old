#!/bin/zsh

set -e

source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh
chruby_auto

# Stuff I don't care about waiting for
{
  nm-applet &
  unclutter &

  sleep 5
  pomme_status &

  # Redshift has been starting before I get a network connection and can't
  # handle that gracefully... so.
  sleep 10
  redshift-gtk &
} &

xset m 0 0

if [ $(hostname -s) = "baburuman" ]; then
  togglekb norman
  synclient TouchpadOff=1
else
  togglekb qwerty
fi

autocutsel -fork
autocutsel -selection PRIMARY -fork &

mpd $HOME/.config/mpd/mpd.conf &

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec awesome
