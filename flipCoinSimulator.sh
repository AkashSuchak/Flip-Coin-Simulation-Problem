#! /bin/bash

#Author : Akash Suchak
#Flipping Coin till either of them have won 21 times and Showing Winner Wih How Much

#Variables to take total value
totalHeads=0
totalTails=0

#Loop till Heads or Tails will not reach at 21
while [ "$totalHeads" -lt "21" -a "$totalTails" -lt "21" ]
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
echo "Heads got $totalHeads : Tails got $totalTails"

#Checking Who is winner and By howw much
if [ "$totalHeads" -gt "$totalTails" ]; then
	wonBy=$(( "$totalHeads" - "$totalTails"))
	echo "Head Won by : $wonBy"

elif [ "$totalHeads" -lt "$totalTails" ]; then
        wonBy=$(( "$totalTails" - "$totalHeads"))
        echo "Tail Won by : $wonBy"

elif [ "$totalHeads" -eq "$totalTails" ]; then
        echo "Oops ! Its Tie "
fi
