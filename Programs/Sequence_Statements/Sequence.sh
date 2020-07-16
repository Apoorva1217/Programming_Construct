#!/bin/bash -x

#1.Use Random Function to get single digit
s=$(((RANDOM%9)+0))
echo "Single digit:"$s
echo""

#2.Use Random to get dice number between 1 to 6
d=$(((RANDOM%6)+1))
echo "Dice number:"$d
echo""

#3.Add two random dice number and print result
dice1=$(((RANDOM%6)+1))
dice2=$(((RANDOM%6)+1))
sum=$(($dice1+$dice2))
echo "Sum of two dice numbers "$dice1 "and" $dice2 "is:" $sum
echo""

#4.WAP that reads 5 random 2 digit values, then find sum and avg
start=10
end=99
range=$(($end-$start+1))
sum=0
echo "5 Random two digit numbers are:"
for i in `seq 5`
do
	res=$(($((RANDOM % range))+$start))
	echo $res
	sum=$((sum+res))
	avg=$((sum/5))
done
echo "Sum:"$sum
echo "Average:"$avg
echo""

#5.Unit conversion
#a.1ft=12in then 42in=?
inches=42
feet=$(($inches / 12))
echo "Total feets are:"$feet

#b.Rectangular plot of 60ftx40ft in meters
lenght=60
breadth=40
plot=$(($lenght * $breadth))
meters=`echo $plot | awk '{print $plot / 3.2808}'`
echo "Total meters are:"$meters

#c.Calculate area of 25 such plots in acres
n=25
area=$(($plot * $n))
acres=`echo $area | awk '{print $area / 43560}'`
echo "Total acres are:"$acres
