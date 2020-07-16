#!/bin/bash

integers=0
for((i=1;i<100;i++))
do
	if [ $(($i%11)) -eq 0 ]
	then
		arr[((integers++))]=$i
	fi
done
echo "Array of repeated numbers are:" ${arr[@]}
