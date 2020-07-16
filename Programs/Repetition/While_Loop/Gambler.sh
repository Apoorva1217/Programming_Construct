#!/bin/bash 

stake=100
goal=200
bets=0
win=0

while [ $stake -gt 0 ] || [ $stake -eq $goal ]
do
	bets=$(($bets+1))
	r=$(($RANDOM%2))
	if [ $r -eq 1 ]
	then
		stake=$(($stake+1))
		win=$(($win+1))
	else
		stake=$(($stake-1))
	fi
done

echo "win="$win
echo "bets="$bets
