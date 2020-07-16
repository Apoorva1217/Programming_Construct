#!/bin/bash -x

echo "Enter the number:"
read n
s=1/1

for((i=2;i<=n;i++))
do
	if(($i < $n))
	then
		echo "1/$i+"
		s=$s+1/$i
	fi
	if(($i==$n))
	then
		echo "1/$i"
		s=$s+1/$i
	fi
done
echo  "Harmonic series:"$s
