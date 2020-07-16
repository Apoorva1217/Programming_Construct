#!/bin/bash

dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

while [ true ]
do
	r=$(((RANDOM % 6)+1))
	dice[$r]=$((dice[$r]+1))
	if [ ${dice[$r]} -eq 10 ]
	then
		break
	fi
done

for ((i=1 ; i<=6 ; i++))
do
	echo "dice[$i]:${dice[$i]}"
done

for ((i=1 ; i<=6 ; i++))
do
	if [ ${dice[$i]} -eq 10 ]
	then
		echo "Maximum number dice occured is:" dice[$i]
	fi
done

n=60
for ((i=1 ; i<=6 ; i++))
do
	if [ ${dice[$i]} -lt $n ]
	then
		min=$i
		n=${dice[$i]}
	fi
done
echo "Minimum number dice occured is:" dice[$min]
