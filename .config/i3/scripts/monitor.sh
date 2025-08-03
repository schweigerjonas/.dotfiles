#!/bin/bash

MODELINE_NAME="2560x1080" # Currently doesn't work properly, stretches to full screen width and height
MODELINE_NAME_B="1920x1080"
OUTPUT_MONITOR="HDMI-2"
OUTPUT_DISPLAY="eDP-1"

if ! xrandr | grep -q "$MODELINE_NAME"; then
  xrandr --newmode "$MODELINE_NAME" 230.00 2560 2720 2992 3424 1080 1083 1093 1120 -hsync +vsync
  xrandr --addmode "$OUTPUT_MONITOR" "$MODELINE_NAME"
fi

xrandr --output "$OUTPUT_MONITOR" --auto --mode "$MODELINE_NAME_B" \
  --right-of "$OUTPUT_DISPLAY"
