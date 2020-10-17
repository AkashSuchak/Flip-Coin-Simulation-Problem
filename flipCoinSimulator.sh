#! /bin/bash

#Author : Akash Suchak
#As a simulator start with Flipping a Coin to Display Heads or Tails as Winner

#Random Value 0 or 1
isCheck=$((RANDOM%2))

#Checking Heads or Tails
if [ "$isCheck" -eq 0 ]; then
	echo "Heads is Winner"
else
	echo "Tails is Winner"
fi
