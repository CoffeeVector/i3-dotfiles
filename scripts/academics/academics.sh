#!/bin/bash
course=$(ls -l ~/Academics/UCMerced/Spring2019 | awk '{ if (NR !=1) {print $9}}' | sed "s/\([A-Z]\)/ \1/g;s/ //" | rofi -dmenu -i -p "Academics: ")
course=$(echo -e $course | sed "s/ //g" )
if [ "$course" != "" ]; then
	st -e ranger ~/Academics/UCMerced/Spring2019/$course
fi
