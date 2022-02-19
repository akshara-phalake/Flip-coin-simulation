#!/bin/bash

head=1
tail=0
headcount=0
tailcount=0
read -p "Enter the number of coin flips : " n
for (( i=0; i<n; i++ ))
do
	random=$(( $RANDOM % 2 ))
	if(( $random == 1))
	then
		(( headcount++ ))
	else
   	(( tailcount++ ))
	fi
done
echo "Heads won $headcount times"
echo "Tails won $tailcount times"
