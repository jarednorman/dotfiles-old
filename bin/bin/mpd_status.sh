#!/bin/sh
if mpc status | grep playing >/dev/null
then
  mpc --format "[%title%] - [%artist%]" | head -n 1
else
  echo "NO SONG PLAYING"
fi
