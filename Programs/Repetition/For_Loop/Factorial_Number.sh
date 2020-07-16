#!/bin/bash -x

echo "Enter the number:"
read n

echo -n "$n Factorial ($n!) = "
m=1
fact=1
for((i=2;i<=n;i++))
do
	fact=$(($fact * $i))
	m=$m*$i
done
echo $m "=" $factY

