#!/bin/bash

WALL_DIR=$HOME/Pictures/wallpaper/
if [ -d $WALL_DIR ]; then
  WALLPAPER=$(find "$WALL_DIR" -type f | shuf -n 1)
  FLAG="-i $WALLPAPER"
else
  FLAG='-c 1b1b1b'
fi

swaylock $FLAG \
  --ignore-empty-password \
  --indicator-idle-visible \
  --indicator-radius 350 \
  -f
