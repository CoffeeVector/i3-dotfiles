#!/bin/bash
restic snapshots -r /home/coffeevector/Backup/resticBackup | head -n -2 | awk '{if(NR!=1&&NR!=2){print $1 " " $2 " " $3}}' > /tmp/restic-snapshots.txt
snapshot=$(cat /tmp/restic-snapshots.txt | rofi -dmenu -i -p "Snapshot" | awk '{print $1}')
rm /tmp/restic-snapshots.txt
restic forget $snapshot
