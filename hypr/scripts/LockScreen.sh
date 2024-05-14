#!/bin/bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# For Swaylock

CONFIG="$HOME/.config/swaylock/config"

# sleep 5s; hyprctl dispatch dpms off; swaylock --config ${CONFIG} & disown

swaylock; sleep 5; hyprctl dispatch dpms off
