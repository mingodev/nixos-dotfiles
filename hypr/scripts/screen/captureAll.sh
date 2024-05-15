#!/bin/bash

grim $HOME/Pictures/Screenshots/$(date +'grim_%F_%H-%M-%S.png')

play $HOME/.config/hypr/assets/sounds/camera-shutter.mp3

notify-send --urgency="low" "Screens captured" "A capture of all your screens has been saved in your screen saves folder." --icon="$HOME/.config/hypr/assets/icons/screen_capture.png"

