#!/bin/bash

#LOCKUTIL=hyprlock
LOCKUTIL=swaylock
#LOCK="pidof hyprlock || hyprlock"
LOCK="pidof swaylock || sh ~/.config/sway/scripts/swaylock.sh"
SLEEP="pidof $LOCKUTIL && (hyprctl dispatch dpms off || swaymsg 'output * dpms off')"
UNSLEEP="hyprctl dispatch dpms on || swaymsg 'output * dpms on'"

swayidle -w \
  timeout 5 "$SLEEP" \
  resume "$UNSLEEP" \
  \
  timeout 570 "notify-send 'Your display is about to go to sleep'" \
  \
  timeout 600 "$LOCK && $SLEEP" \
  resume "$UNSLEEP"
