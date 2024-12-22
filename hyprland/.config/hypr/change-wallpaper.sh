
#!/bin/bash

WALLPAPER_DIRECTORY=~/Pictures/wallpaper

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused

hyprctl hyprpaper wallpaper ",$WALLPAPER"
