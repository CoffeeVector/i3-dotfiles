#!/bin/bash
case $(echo -e "Java\nC\nPHP\nJavaScript\nGoLand\nPyCharm\nIdea\nAndroidStudio\nDataGrip" | rofi -dmenu -i -p "IDEs") in
	Java)
		/home/coffeevector/.config/i3/scripts/ide/java.sh
		;;
	C)
		cEclipse
		;;
	PHP)
		phpEclipse
		;;
	JavaScript)
		jsEclipse
		;;
	GoLand)
		goland
		;;
	PyCharm)
		pycharm
		;;
	Idea)
		idea
		;;
	AndroidStudio)
		androidStudio
		;;
	DataGrip)
		datagrip
		;;
esac
