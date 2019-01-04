#!/bin/bash
output=$(rofi -dmenu -password -lines 0 -p "Password" | restic prune -r /home/coffeevector/Backup/resticBackup | grep "frees" | awk '{print $11}')
if [ "$output" = "" ];then
	notify-send "PRUNE FAILED"
else
	notify-send "PRUNE COMPLETE: freed "$output
fi
