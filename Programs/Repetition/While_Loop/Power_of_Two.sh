#!/bin/bash -x

echo "Enter a number:"
read n
a=1
b=1

echo  "Table of power of 2:"
while [ $n -ne 0 ] && [ $a -lt 256 ]
do
	a=$((2*$a))
	echo "2^$b=$a"
	b=$(($b+1))
	n=$(($n-1))
done
