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
	a=$n
else
	a=0
fi

r=0
temp=$n
rev=""

palindrome(){
while [ $n -gt 0 ]
do
	r=$(($n%10))
	n=$(($n/10))
	rev=$( echo ${rev}${r})
done
}

palindrome n
if(($temp==$rev && $rev==$a))
then
	echo "The number is both Prime as well as Palindrome"
else
	echo "The number is not Prime and Palindrome"
fi
