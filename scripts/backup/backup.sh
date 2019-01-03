#!/bin/bash
st -e restic backup --exclude-file=/home/coffeevector/Backup/resticExclusions -r /home/coffeevector/Backup/resticBackup /home/coffeevector
notify-send "BACKUP COMPLETE"
