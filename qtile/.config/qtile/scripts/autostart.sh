#!/bin/env bash

wlr-randr --output DP-1 --on --mode 3840x2160@120Hz --pos 1440,400
wlr-randr --output DP-2 --on --mode 2560x1440 --pos 0,0 --transform 90
wlr-randr --output DP-3 --on --mode 2560x1440 --pos 5280,0 --transform 90
