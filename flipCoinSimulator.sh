
#!/bin/bash

head=1
tail=0
headcount=0
tailcount=0
while [ $headcount -lt 21  ] && [ $tailcount -lt 21  ]
do
	random=$(( $RANDOM % 2 ))
	if(( $random == $head))
	then
		(( headcount++ ))
	else
   	(( tailcount++ ))
	fi
done

if [ $headcount == 21  ]
then
	difH=$(( $headcount - $tailcount ))
	echo Head count is $headcount
	echo Head won by $difH Tail counts.
elif [ $tailcount == 21  ]
then
	difT=$(( $tailcount - $headcount ))
	echo Tail count is $tailcount
	echo Tail won by $difT Head counts.
elif [ $headcount == 21 ] && [ $tailcount == 21 ]
then
	echo It is a tie
fi
