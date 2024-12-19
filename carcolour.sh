#!/bin/bash
echo "enter the file name"
read file_name
echo "Below car which is red in colour"
while read line
do
	colour=`echo "$line" | awk -F " " '{print $2}'`
	if [ $colour = Red ]
	then
		echo "$line" | awk -F " " '{print $0}'
	fi
done < $file_name

