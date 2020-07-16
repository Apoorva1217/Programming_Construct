#!/bin/bash -x

for i in `seq 2`
do
	res=$(($((RANDOM))%2))
	if(($res==1))
	then
		echo "Head"
	else
		echo "Tail"
	fi
done
