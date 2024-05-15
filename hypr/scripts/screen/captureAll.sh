#!/bin/bash

screenshotFilename=$HOME/Pictures/Screenshots/$(date +'grim_all_%F_%H-%M-%S.png')

grim $screenshotFilename

if [ -e $screenshotFilename ]; then

play $HOME/.config/hypr/assets/sounds/camera-shutter.mp3

notify-send -i $screenshotFilename --urgency="low" "Screens captured" "A capture of all your screens has been saved in your screen saves folder."

fi
