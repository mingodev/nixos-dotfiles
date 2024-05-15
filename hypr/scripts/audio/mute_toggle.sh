#!/bin/bash
if [[ $(wpctl get-volume @DEFAULT_AUDIO_SINK@) > 0 ]]; then
    notify-send --urgency="low" --icon="audio-volume-muted" "Volume muted" "Volume has been muted. Right-click the icon in waybar to re-enable sound."
else
    notify-send --urgency="low" --icon="audio-volume-high" "Volume un-muted" "Volume has been un-muted. Right-click the icon in waybar to disable sound."
fi 

wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
