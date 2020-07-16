#!/bin/bash -x

echo "Enter the number as 1,10,100,.... :"
read n

case $n in
	1)echo Units;;
	10)echo Tens;;
	100)echo Hundreds;;
	1000)echo Thousands;;
	10000)echo Ten of Thousands;;
	100000)echo Hundreds of Thousands;;
	1000000)echo Millions;;
	1000000000)echo Billions;;
esac
