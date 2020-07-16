#!/bin/bash -x

start=100
end=999
range=$(($end-$start+1))

integers=0
echo "10 random 3 digit numbers are:"
for i in `seq 10`
do
	res=$(($((RANDOM%range))+$start))
	echo $res
	arr[((integers++))]=$res
done
echo "Array={${arr[@]}}"

len=${#arr[@]}
smallest=${arr[0]}
secsmall=${arr[0]}


for((i=0;i<$len;i++))
do
	if [ ${arr[i]} -eq $smallest ]
	then
		smallest=$smallest
	elif [ ${arr[i]} -lt $smallest ]
	then
		secsmall=$smallest
		smallest=${arr[i]}
	elif [ ${arr[i]} -lt $secsmall ]
	then
		secsmall=${arr[i]}
	fi
done
echo "The second smallest number is:" $secsmall

largest=${arr[0]}
seclagrest=${arr[0]}

for((j=0;j<$len;j++))
do
	if [ ${arr[j]} -eq $largest ]
	then
		seclargest=$largest
	elif [ ${arr[j]} -gt $largest ]
	then
		seclargest=$largest
		largest=${arr[j]}
	elif [ ${arr[j]} -gt $seclargest ]
	then
		seclargest=${arr[j]}
	fi
done
echo "The second largest number is:" $seclargest
