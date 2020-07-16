#!/bin/bash -x

echo "Enter the number:"
read n

count=0
for((i=2;i<=n/2;++i))
do
	if((($n%$i)==0))
	then
		count=1
		break
	fi
done

if(($count==0))
then
	echo "$n is Prime number"
else
	echo "$n is not Prime number"
fi
