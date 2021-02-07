#! /bin/bash

n=$1
i=0
while [ $i -le $n ]
do

	power=`expr 2^$i | bc`
	echo $power
	if [ $power -ge 256 ]
	then
		break;
	fi
	i=$(($i+1))
done


