#!/bin/bash -x

start=100
end=999
range=$(($end-$start+1))
min=$range
max=99
echo "5 Random 3 digit numbers are:"
for i in `seq 5`
do
	res=$(($((RANDOM % range))+$start))
	echo $res
	i=$res
	if(($max > $res))
	then
		max=$max;
	else
		max=$res;
	fi
	if(($min > $res))
	then
		min=$res;
	else
		min=$min;
	fi
done
echo "Minimum value is:"$min
echo "Maximum value is:"$max
