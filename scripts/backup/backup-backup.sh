#!/bin/bash
output=$(rofi -dmenu -password -lines 0 -p "Password" | restic backup --exclude-file=/home/coffeevector/Backup/resticExclusions -r /home/coffeevector/Backup/resticBackup /home/coffeevector)
if [ "$output" = "" ]; then
	notify-send "BACKUP FAILED."
else
	notify-send "BACKUP COMPLETE."
fi
