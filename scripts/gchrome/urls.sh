#!/bin/bash
case $(echo -e "Schedule\nCat Courses\nDesmos" | rofi -dmenu -i -p "urls") in
	Schedule)
		google-chrome https://docs.google.com/spreadsheets/d/1EwtXgc-dD2aGPBF7PSismlcEY4A2ga-Uao_QPlwd0RQ/edit#gid=0
		;;
	Cat\ Courses)
		google-chrome catcourses.ucmerced.edu
		;;
	Desmos)
		google-chrome desmos.com/calculator
		;;
esac
