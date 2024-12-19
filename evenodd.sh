#!/bin/bash
echo "Enter the integer value"
read num
division=`expr $num % 2`
if [ $division -eq 0 ]
then
	echo "The given number is even"
else
	echo "The given number is odd"
fi
