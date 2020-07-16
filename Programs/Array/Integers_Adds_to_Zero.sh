#!/bin/bash -x

n=3
echo "Enter the three integres:"
for((i=0;i<$n;i++))
do
 	read arr[$i]
done
echo "Elements in Array are:" ${arr[@]}

for((i=0;i<$((n-2));i++))
do
	a=${arr[i]}
	for((j=$((i+1));j<$((n-1));j++))
	do
        	b=${arr[j]}
		for((k=$((j+1));k<$n;k++))
		do
        		c=${arr[k]}
			sum=$((a+b+c))
			if [ $sum -eq 0 ]
			then
				echo "The sum of integers adds to zero: ${arr[i]}+${arr[j]}+${arr[k]}=0"
			else
				echo "The sum of integers is not zero!"
			fi
		done
	done
done
