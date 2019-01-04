#!/bin/bash
output=$(/home/coffeevector/go/bin/drive push -no-prompt ~/Drive/resticBackup/)
notify-send "DRIVE PUSH COMPLETE"
