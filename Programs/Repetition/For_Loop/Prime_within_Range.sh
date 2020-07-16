#!/bin/bash

echo "Enter the lower bound of interval:"
read a
echo "Enter the upper bound of interval:"
read b

echo  "Prime numbers within range $a to $b are:"
for((i=a;i<=b;i++))
do
	count=1
	for((j=2;j<=i/2;j++))
	do
		if((($i%$j)==0))
		then
			count=0
			break
		fi
	done
	if(($count==1))
	then
		echo $i
	fi
done
