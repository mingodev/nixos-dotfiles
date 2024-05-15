#!/bin/bash

grim -g "$(slurp -o)" $HOME/Pictures/Screenshots/$(date +'grim_%F_%H-%M-%S.png')

play $HOME/.config/hypr/assets/sounds/camera-shutter.mp3

notify-send --urgency="low" "Screen captured" "A capture of the selected screen has been saved in your screen saves folder." --icon="$HOME/.config/hypr/assets/icons/screen_capture.png"
