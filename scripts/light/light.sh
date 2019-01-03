#!/bin/bash
light -S $(rofi -lines 0 -dmenu -i -p "Light")
notify-send "Brightness: "$(light -G)
