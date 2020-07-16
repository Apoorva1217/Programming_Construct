#!/bin/bash -x

echo "Enter the first number:"
read x

r=0
rev=""
temp1=$x

pallindrome(){
while [ $x -gt 0 ]
do
	r=$(($x%10))
	x=$(($x/10))
	rev=$( echo ${rev}${r} )
done
}

pallindrome x
if (($temp1 == $rev))
then
	echo "Number $temp1 is Pallindrome"
else
	echo "Number $temp1 is not Pallindrome"
fi
