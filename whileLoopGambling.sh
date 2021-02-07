#! /bin/bash -x
balance=100
win=0
lose=0
while [ $balance -ge 0 -a $balance -le 200 ]
do
	bet=$(( $RANDOM%2 ))	
	if [ $bet -eq 1 ]
	then
		balance=$(( $balance+1 ))
		win=$(( $win+1 ))
	else
		balance=$(( $balance-1 ))
		lose=$(( $lose+1 ))
	fi

done

totalBates=$(( $win+$lose ))

echo "Gambler wins $win times"
echo "gambler loses $lose times"
