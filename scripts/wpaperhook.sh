#!/bin/bash

display=$1
wallpaper=$2

echo "Display is : $display"
echo "Wallpaper path is: $wallpaper"

# Update Pywal
echo ":: Applying pywal with $wallpaper"
wal -i  "$wallpaper" -n -q --backend haishoku ; sh ~/scripts/unified-theme.sh
