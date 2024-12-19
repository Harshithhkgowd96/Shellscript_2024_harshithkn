#!/bin/bash

day=$(date '+%a')
echo day
case $day in
	'Mon') echo "Create a two new files"
	       	touch file1 file2
	;;
	'Tue') echo "Rename the files created"
		mv file1 file3
		mv file2 file4
	;;
        'Wed') echo "Edit the file"
		vi file5
		file="editfile"
		content="Add the content to the file"
		echo "$content" >> $file
	;;
        'Thu') echo "Today is Thursday display the content of a file"
		read file_name
		cat $file_name
	;;
        'Fri') echo "Delete the file"
		rm file
	;;
        'Sat' | 'Sun') echo "No task on Saturday and Sunday"
	;;
esac
