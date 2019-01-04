#!/bin/bash
light -U 2
notify-send "Brightness: "$(light -G)
