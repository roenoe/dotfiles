#! /bin/env bash

# Top bar
waybar &
nm-applet --indicator &

# Notification shell
swaync &

# Idling tool
hypridle &

# Polkit agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
