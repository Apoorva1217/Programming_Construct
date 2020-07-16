#!/bin/bash -x

echo "Enter the number:"
read n
integers=0

if (($n==0 || $n==1))
then
	echo "$n is not a prime number."
else
	for((i=2;i<=n;i++))
	do
        	while [ $(($n%$i)) -eq 0 ]
        	do
                	n=$(($n/$i))
			arr[((integers++))]=$i
        	done
	done
fi
echo "Array={${arr[@]}}"
