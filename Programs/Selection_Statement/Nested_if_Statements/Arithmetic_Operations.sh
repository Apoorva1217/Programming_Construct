#!/bin/bash -x

echo "Enter value of a:"
read a
echo "Enter value of b:"
read b
echo "Enter value of c:"
read c

res1=$(($a+$b*$c))
echo "a+b*c="$res1

res2=$(($a%$b+$c))
echo "a%b+c="$res2

res3=$(($c+$a/$b))
echo "c+a/b="$res3

res4=$(($a*$b+$c))
echo "a*b+c="$res4

if(($res1 > $res2)) && (($res1 > $res3)) && (($res1 > $res4))
then
	echo "Maximum value is:"$res1
elif(($res2 > $res1 && $res2 > $res3 && $res2 > $res4))
then
        echo "Maximum value is:"$res2
elif(($res3 > $res1 && $res3 > $res2 && $res3 > $res4))
then
        echo "Maximum value is:"$res3
else
	echo "Maximum value is:"$res4
fi

if(($res1 < $res2 && $res1 < $res3 && $res1 < $res4))
then
        echo "Minimum value is:"$res1
elif(($res2 < $res1 && $res2 < $res3 && $res2 < $res4))
then
        echo "Minimum value is:"$res2
elif(($res3 < $res1 && $res3 < $res2 && $res3 < $res4))
then
        echo "Minimum value is:"$res3
else
        echo "Minimum value is:"$res4
fi
