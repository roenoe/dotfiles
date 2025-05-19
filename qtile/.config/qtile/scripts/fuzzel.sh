#!/bin/env bash

export WAYLAND_DISPLAY=wayland-0
export XDG_SESSION_TYPE=wayland
pkill fuzzel || fuzzel --list-executables-in-path
