#!/bin/bash
case $(echo -e "Restic Backup\nRestic Forget\nRestic Prune\nDrive Push" | rofi -dmenu -i -p "Computer") in
	Restic\ Backup)
		st -e restic backup --exclude-file=/home/coffeevector/Backup/resticExclusions -r /home/coffeevector/Backup/resticBackup /home/coffeevector
		notify-send "BACKUP COMPLETE"
		;;
	Restic\ Forget)
		st -e /home/coffeevector/.config/i3/scripts/backup/backup-forget.sh
		notify-send "SNAPSHOT FORGET COMPLETE"
		;;
	Restic\ Prune)
		st -e /home/coffeevector/.config/i3/scripts/backup/backup-prune.sh
		notify-send "PRUNE COMPLETE"
		;;
	Drive\ Push)
		st -e /home/coffeevector/.config/i3/scripts/backup/backup-push.sh
		notify-send "DRIVE PUSH COMPLETE"
		;;
esac
