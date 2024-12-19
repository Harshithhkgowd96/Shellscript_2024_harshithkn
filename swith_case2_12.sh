#!/bin/bash
day=$(date '+%a')
echo $day
case $day in
	'Mon') echo "Display all the files which was modified 10 days ago"
		find /home/ubuntu/ -type f -mtime +10
		;;
	'Tue') echo "List the files which contains a patteren"
		read patteren
		grep -r -l $patteren
		;;
	'Wed') echo "Display all the files does not contains a patteren"
		read patteren
		grep -v -r -l $patteren
		;;
	'Thu') echo "Enter the path to check it is a file or directory or link"
		read path
		if [ -f $path ]
		then
			echo "The given path is a file"
		elif [ -d $path ]
		then
			echo "The given path is a directory"
		elif [ -L $path ]
		then
			echo "The given path is a link"
			else
				echo "The given path does not exist"
		fi
		;;
	'Fri') echo "Enter the path to check the empty files"
		path="/home/ubuntu/"
		Emptyfile=$(find $path -type f -empty)
		if [ -z "$Emptyfile" ]
		then
			echo "No empty files exist in the path"
			else
				echo "Empty files are: $Emptyfile"
		fi
		;;
	'Sat' | 'Sun') echo "No task to for Saturday and Sunday"
		;;
esac
