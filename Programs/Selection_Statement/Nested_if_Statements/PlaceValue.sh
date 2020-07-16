#!/bin/bash -x

echo "Enter a number as 1,10,100,..... :"
read n

if(($n==1))
then
	echo Units
elif(($n==10))
then
	echo Tens
elif(($n==100))
then
        echo Hundreds
elif(($n==1000))
then
        echo Thousnads
elif(($n==10000))
then
        echo Ten of Thousands
elif(($n==100000))
then
        echo Hundreds of Thousands
elif(($n==1000000))
then
        echo Millions
elif(($n==1000000000))
then
        echo Billions
else
	echo Invalid Input
fi
