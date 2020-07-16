#!/bin/bash 

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

for((i=0;i<10;i++))
do
	for((j=0;j<(10-i-1);j++))
	do
		if(( ${arr[j]} > ${arr[$((j+1))]} ))
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done

echo "The second smallest number is:" ${arr[1]}
echo "The second largest number is:" ${arr[8]}
