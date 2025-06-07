#!/bin/bash

SS_PATH="/tmp/logout_blur.png"

# Kill any previous preview image
pkill swayimg

# Take a screenshot of the current screen
grim "$SS_PATH"

# Launch swayimg to show the screenshot fullscreen (Wayland layer window)
swayimg --background-color 00000000 -f "$SS_PATH" &

# Wait briefly to ensure it appears
sleep 0.2

# Launch wlogout (uses layer shell to appear on top)
wlogout --protocol layer-shell

# Clean up
pkill swayimg
rm "$SS_PATH"

