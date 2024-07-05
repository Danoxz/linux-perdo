#!/bin/sh

xrandr --output Virtual-1 --mode 1920x1080
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle 
feh --bg-scale ~/.wallpaper.jpg
dwmblocks &
dwm 2> ~/.dwm.log
