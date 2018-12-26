#!/bin/bash
project=$(ls -l ~/Projects | awk '{ if (NR !=1) {print $9}}' | sed "s/\([A-Z]\)/ \1/g;s/ //" | rofi -dmenu -i -p "Projects: ")
project=$(echo -e $project | sed "s/ //g" )
if [ "$project" != "" ]; then
	st -e ranger ~/Projects/$project
fi
