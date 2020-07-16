#!/bin/bash -x

#Write a program that takes day and month from the command line and
#prints true if day of month is between March 20 and June 20, false otherwise.

echo "Enter the day:"
read day
echo "Enter the month:"
read month

if(($month==3 && $day > 20 && $day < 32)) || (($month==4 && $day > 0 && $day < 31)) || (($month==5 && $day > 0 && $day < 32)) || (($month==6 && $day > 0 && $day > 20))
then
	echo True
else
	echo False
fi
