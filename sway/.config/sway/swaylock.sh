#!/bin/bash

WALL_DIR=$HOME/Pictures/wallpaper/

WALLPAPER=$(find "$WALL_DIR" -type f | shuf -n 1)

swaylock -i "$WALLPAPER" \
  --ignore-empty-password \
  --indicator-idle-visible \
  --indicator-radius 350 \
  -f
