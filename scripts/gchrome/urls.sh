#!/bin/bash
case $(echo -e "Schedule\nSpring Schedule\nCat Courses\nDesmos" | rofi -dmenu -i -p "urls: ") in
	Schedule)
		google-chrome https://docs.google.com/spreadsheets/d/1kOfYULt2iKv-h3LI9KUNyq7LS02PYs4YrVeqkXxHNfY/edit#gid=1787013216
		;;
	Spring\ Schedule)
		google-chrome https://docs.google.com/spreadsheets/d/1EwtXgc-dD2aGPBF7PSismlcEY4A2ga-Uao_QPlwd0RQ/edit#gid=0
		;;
	Cat\ Courses)
		google-chrome catcourses.ucmerced.edu
		;;
	Desmos)
		google-chrome desmos.com/calculator
		;;
esac
