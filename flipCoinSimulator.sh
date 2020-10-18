#! /bin/bash 

#Author : Akash Suchak
#Extend UC 3  to ensure if its tie then the game continues till the difference of minimum 2 points is Achieved

#Variables to take total value
totalHeads=0
totalTails=0

#Fuction to Check number occurence of Heads and tails
function flipCoins(){

	#Random Value 0 or 1
        isCheck=$((RANDOM%2))

        #Checking Heads or Tails
        if [ "$isCheck" -eq 0 ]; then
                totalHeads=$(($totalHeads + 1))
        else
                totalTails=$(($totalTails + 1))
        fi

}

#Loop till Heads or Tails will not reach at 21 And Get Difference Atleast by 2
while [ "$totalHeads" -lt 21 -a "$totalTails" -lt 21 -o $(("$totalHeads" - "$totalTails")) -lt 2 ]
do
	#calling Function
	flipCoins
done

#Display Results
echo "Heads got $totalHeads : Tails got $totalTails"

#Checking Who is winner and By how much
if [ "$totalHeads" -gt "$totalTails" ]; then
	wonBy=$(( "$totalHeads" - "$totalTails"))
	echo "Heads Won by : $wonBy"

elif [ "$totalHeads" -lt "$totalTails" ]; then
        wonBy=$(( "$totalTails" - "$totalHeads"))
        echo "Tails Won by : $wonBy"

elif [ "$totalHeads" -eq "$totalTails" ]; then
        echo "Oops ! Its Tie "
fi
