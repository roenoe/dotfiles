#!/bin/bash

#LOCKUTIL=hyprlock
LOCKUTIL=swaylock
#LOCK="pidof hyprlock || hyprlock"
LOCK="pidof swaylock || sh ~/.config/sway/swaylock.sh"

swayidle -w \
  timeout 10 "pidof "$LOCKUTIL" && $(hyprctl dispatch dpms off || swaymsg "output * power off")" \
  resume "hyprctl dispatch dpms on || swaymsg "output * power on""\
  \
  timeout 570 "Your display is about to go to sleep" \
  \
  timeout 600 "hyprctl dispatch dpms off || swaymsg "output * power off" ; $LOCK" \
  resume "hyprctl dispatch dpms on || swaymsg "output * power on"" \
  before-sleep "swaylock -f -c 000000"

