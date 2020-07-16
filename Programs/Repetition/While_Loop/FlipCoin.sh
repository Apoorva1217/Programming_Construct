#!/bin/bash -x

head=0
tail=0

while [ $head -ne 11 ] && [ $tail -ne 11 ]
do
	r=$((RANDOM%2))
	if(($r == 1))
	then
		head=$(($head+1))
	else
		tail=$(($tail+1))
	fi
done
echo "Head occured:" $head
echo "Tail occured:" $tail

if [ $head -eq 11 ]
then
	echo "Head Wins 11 times!"
else
	echo "Tail Wins 11 times!"
fi
