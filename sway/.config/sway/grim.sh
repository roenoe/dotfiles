IMG=~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s)-grim.png 

grim -g "$(slurp)" $IMG && wl-copy < $IMG
