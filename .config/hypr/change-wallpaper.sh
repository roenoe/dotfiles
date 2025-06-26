#!/bin/bash

hyprctl hyprpaper unload all

WALL_DIR=$HOME/Pictures/wallpaper/

WALLPAPER=$(find "$WALL_DIR" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"
