#!/bin/sh
# Colors and style live in ~/.config/swaylock/config
# POSIX sh: this is run via `sh` (dash), so no bash arrays.

WALL_DIR=$HOME/Pictures/wallpaper/
set --

if [ -d "$WALL_DIR" ]; then
  WALLPAPER=$(find "$WALL_DIR" -type f | shuf -n 1)
  [ -n "$WALLPAPER" ] && set -- -i "$WALLPAPER"
fi

# Responsive indicator: swaylock uses one radius for all outputs, so size it
# from the smallest logical short side among active outputs (handles scaling
# and rotated monitors). Falls back to the config values if this fails.
SHORT=$(swaymsg -t get_outputs -r 2>/dev/null \
  | jq '[.[] | select(.active) | [.rect.width, .rect.height] | min] | min // empty' 2>/dev/null)

if [ -n "$SHORT" ] && [ "$SHORT" -gt 0 ] 2>/dev/null; then
  RADIUS=$((SHORT * 17 / 100))      # ring diameter ≈ 34% of the short side
  THICKNESS=$((RADIUS / 11))
  FONT=$((RADIUS / 6))
  [ "$THICKNESS" -lt 8 ] && THICKNESS=8
  [ "$FONT" -lt 18 ] && FONT=18
  set -- "$@" --indicator-radius "$RADIUS" \
              --indicator-thickness "$THICKNESS" \
              --font-size "$FONT"
fi

exec swaylock "$@" -f
