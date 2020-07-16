#!/bin/bash -x

echo "Enter the year (YYYY): "
read year

if(($year % 4 == 0)) && (($year % 100 != 0)) || (($year % 400 == 0))
then
	echo "$year is a leap year."
else
	echo "$year is not a leap year."
fi
