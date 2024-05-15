#!/bin/bash

screenshotFilename=$HOME/Pictures/Screenshots/$(date +'grim_area_%F_%H-%M-%S.png')

grim -g "$(slurp)" $screenshotFilename

if [ -e $screenshotFilename ]; then
play $HOME/.config/hypr/assets/sounds/camera-shutter.mp3

notify-send --urgency="low" -i $screenshotFilename "Area captured" "A capture of the targeted area has been saved in your screen saves folder."

fi
