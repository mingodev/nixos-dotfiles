#!/bin/bash

screenshotFilename=$HOME/Pictures/Screenshots/$(date +'grim_screen_%F_%H-%M-%S.png')

grim -g "$(slurp -o)" $screenshotFilename

if [ -e $screenshotFilename ]; then

play $HOME/.config/hypr/assets/sounds/camera-shutter.mp3

notify-send --urgency="low" -i $screenshotFilename "Screen captured" "A capture of the selected screen has been saved in your screen saves folder."

fi
