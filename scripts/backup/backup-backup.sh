#!/bin/bash
notifyID=$(notify-send.sh -p -t 1000000 "BACKUP IN PROGRESS")
output=$(rofi -dmenu -password -lines 0 -p "Password" | restic backup --exclude-file=/home/coffeevector/Backup/resticExclusions -r /home/coffeevector/Backup/resticBackup /home/coffeevector)
if [ "$output" = "" ]; then
	notify-send.sh -r $notifyID "BACKUP FAILED."
else
	date +"%B %d, %Y" > ~/.config/i3/scripts/backup/last-backup-date
	notify-send.sh -r $notifyID "BACKUP COMPLETE."
fi
