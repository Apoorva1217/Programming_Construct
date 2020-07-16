#!/bin/bash

month=(Jan Feb March April May June July Aug Sept Oct Nov Dec)

for ((i=1; i<=50 ; i++))
do
	Bmonth[$i]=${month[$((RANDOM %12))]}
done

jan=0
feb=0
march=0
april=0
may=0
june=0
july=0
aug=0
sept=0
oct=0
nov=0
dec=0


for ((i=1 ; i<=50 ; i++))
do
	if [ ${Bmonth[$i]} == "Jan" ]
	then
		jan=$(($jan + 1))
	elif [ ${Bmonth[$i]} == "Feb" ]
		then
			feb=$(($feb + 1))
		elif [ ${Bmonth[$i]} == "March" ]
			then
				march=$(($march + 1))
			elif [ ${Bmonth[$i]} == "April" ]
                        then
                                april=$(($april + 1))
				elif [ ${Bmonth[$i]} == "May" ]
                        		then
                                		may=$(($may + 1))
					elif [ ${Bmonth[$i]} == "June" ]
                			        then
		                        	        june=$(($june + 1))
						elif [ ${Bmonth[$i]} == "July" ]
                				        then
		                                		july=$(($july + 1))
							elif [ ${Bmonth[$i]} == "Aug" ]
        					                then
	                                				aug=$(($aug + 1))
								elif [ ${Bmonth[$i]} == "Sept" ]
						                        then
                                						sept=$(($sept + 1))
									elif [ ${Bmonth[$i]} == "Oct" ]
        							                then
	                                						oct=$(($oct + 1))
										elif [ ${Bmonth[$i]} == "Nov" ]
        								                then
	                                							nov=$(($nov + 1))
											elif [ ${Bmonth[$i]} == "Dec" ]
                        									then
					                                				dec=$(($dec + 1))
	fi
done
echo "January : $jan"
echo "February : $feb"
echo "March : $march"
echo "April : $april"
echo "May : $may"
echo "June : $june"
echo "July : $july"
echo "Augest : $aug"
echo "September : $sept"
echo "October : $oct"
echo "November : $nov"
echo "December : $dec"
