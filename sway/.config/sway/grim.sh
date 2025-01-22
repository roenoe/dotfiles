IMG=~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s)-grim.png 

grim -g "$(slurp)" $IMG && wl-copy < $IMG
notify-send -e "Screenshot taken and copied"
