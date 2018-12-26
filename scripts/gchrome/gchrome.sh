#!/bin/bash
rofiOutput=$(echo -e "Normal\nIncognito\nGuest\nBrowsh" | rofi -dmenu -i -p "google-chrome: ")
case $rofiOutput in
	Incognito)
		google-chrome --incognito
		;;
	Normal) google-chrome --new-window
		;;
	Guest)
		google-chrome --user-data-dir=$HOME/.config/google-chrome/Guest\ Profile
		;;
	Browsh)
		st -e browsh
		;;
	*)
		rofiOutput=${rofiOutput// /+}
		if [ $rofiOutput != "" ]
		then
			google-chrome --new-window https://google.com/search?\q=$rofiOutput
		fi
		#google-chrome https://google.com/search?\q=test
		;;
esac
