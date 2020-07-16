#!/bin/bash -x

echo "Enter the number:"
read n

echo "Prime factors are:"
for((i=2;i<=n;i++))
do
	while [ $(($n%$i)) -eq 0 ]
	do
		n=$(($n/$i))
		echo $i
	done
done
