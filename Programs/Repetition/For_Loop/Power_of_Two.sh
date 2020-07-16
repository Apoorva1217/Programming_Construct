#!/bin/bash -x

echo "Enter the number:"
read n
a=1

for((i=1;i<=n;i++))
do
	a=$((2*$a))
	echo 2^$i=$a
done
