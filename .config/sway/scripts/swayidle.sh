#!/bin/bash

LOCKUTIL=swaylock
LOCK="pidof swaylock || sh ~/.config/sway/scripts/swaylock.sh"
SLEEP="pidof $LOCKUTIL && swaymsg 'output * dpms off'"
UNSLEEP="swaymsg 'output * dpms on'"

swayidle -w \
  timeout 10 "$SLEEP" \
  resume "$UNSLEEP" \
  \
  timeout 570 "notify-send 'Your display is about to go to sleep'" \
  \
  timeout 600 "$LOCK && $SLEEP" \
  resume "$UNSLEEP"
