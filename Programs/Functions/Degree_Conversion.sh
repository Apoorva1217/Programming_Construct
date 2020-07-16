#!/bin/bash -x

degF(){
        a=`echo - | awk '{print 9/5}'`
        b=`echo $degC | awk '{print $degC * 9/5}'`
        c=`echo $b | awk '{print $b + 32}'`
}

degC(){
        a=`echo - | awk '{print 5/9}'`
        b=`echo $degF | awk '{print $degF -32}'`
        c=`echo $b | awk '{print $b * 5/9}'`
}


echo "1.degC to degF"
echo "2.degF to degC"
echo "Enter your choice:"
read ch

case $ch in
	1)echo "Enter temp in degC:"
	read degC
	if [ $degC -ge 0 ] && [ $degC -le 100 ]
	then
		degF
		echo "temp in degF:" $c
	else
		echo "invalid input"
	fi;;

	2)echo "Enter temp in degF:"
	read degF
	if [ $degF -ge 32 ] && [ $degF -le 212 ]
	then
		degC
		echo "temp in degC:" $c
	else
		echo "invalid input"
	fi;;
esac
