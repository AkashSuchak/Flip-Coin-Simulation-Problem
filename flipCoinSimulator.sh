#! /bin/bash

#Author : Akash Suchak
#Loop Through Multiple Times of flipping a coin and show number of times head and tail has won

#Taking number from user
read -p "Enter Number : " number

#Variables to take total value
totalHeads=0
totalTails=0

#Check the number is numeric value or not
if [[ $number ]] && [ $number -eq $number 2>/dev/null ] && [ $number -gt 0 ]; then
	for (( i=0; i<$number; i++ ))
	do
		#Random Value 0 or 1
		isCheck=$((RANDOM%2))

		#Checking Heads or Tails
		if [ "$isCheck" -eq 0 ]; then
			totalHeads=$(($totalHeads + 1))
		else
			totalTails=$(($totalTails + 1))
		fi
	done

	#Display Results
	echo "Out Of $number : Heads Won $totalHeads times : Tails won $totalTails times"
else
	echo "Wrong Input !! Enter Number Above 0 Only. E.g  15 "
fi
