#!/bin/bash
case $(echo -e "Restic Backup\nRestic Forget\nRestic Prune\nDrive Push" | rofi -dmenu -i -p "Computer") in
	Restic\ Backup)
		/home/coffeevector/.config/i3/scripts/backup/backup-backup.sh
		;;
	Restic\ Forget)
		/home/coffeevector/.config/i3/scripts/backup/backup-forget.sh
		;;
	Restic\ Prune)
		/home/coffeevector/.config/i3/scripts/backup/backup-prune.sh
		;;
	Drive\ Push)
		/home/coffeevector/.config/i3/scripts/backup/backup-push.sh
		;;
esac
