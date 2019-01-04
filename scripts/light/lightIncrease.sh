#!/bin/bash
light -A 2
notify-send "Brightness: "$(light -G)
