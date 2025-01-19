#!/bin/bash

WALL_DIR=$HOME/Pictures/wallpaper/

WALLPAPER=$(find "$WALL_DIR" -type f | shuf -n 1)

pkill swaybg
swaybg -i "$WALLPAPER" -m fill
