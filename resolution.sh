#!/bin/bash

#cvt 1920 1080
sudo xrandr --newmode "1920x1080_60.00" 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
xrandr --addmode VGA2 "1920x1080_60.00"

xrandr --output VGA2 --mode "1920x1080_60.00"
