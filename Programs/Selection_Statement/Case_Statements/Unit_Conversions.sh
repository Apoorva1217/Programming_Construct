#!/bin/bash -x

echo "Enter a number:"
read n

echo "Enter your choice:"
echo "1.feet to inch"
echo "2.feet to meter"
echo "3.inch to feet"
echo "4.meter to feet"
read ch

case $ch in
	1)a=`echo $n | awk '{print $n*12}'`
	echo $a;;
	2)a=`echo $n | awk '{print $n/3.281}'`
	echo $a;;
	3)a=`echo $n | awk '{print $n/12}'`
	echo $a;;
	4)a=`echo $n | awk '{print $n*3.281}'`
	echo $a;;
esac
