#!/bin/bash
date=$(cat ~/.config/i3/scripts/backup/last-backup-date)
case $(echo -e "Restic Backup\nRestic Forget\nRestic Snapshots\nRestic Prune\nDrive Push" | rofi -dmenu -i -p "Last Backup: $date") in
	Restic\ Backup)
		/home/coffeevector/.config/i3/scripts/backup/backup-backup.sh
		;;
	Restic\ Forget)
		/home/coffeevector/.config/i3/scripts/backup/backup-forget.sh
		;;
	Restic\ Snapshots)
		/home/coffeevector/.config/i3/scripts/backup/backup-snapshots.sh
		;;
	Restic\ Prune)
		/home/coffeevector/.config/i3/scripts/backup/backup-prune.sh
		;;
	Drive\ Push)
		/home/coffeevector/.config/i3/scripts/backup/backup-push.sh
		;;
esac
