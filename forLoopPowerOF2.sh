#! /bin/bash -x

for (( n=0 ;n<=$1 ; n++ ))
do
	power= `expr 2^$n | bc `
	echo $power
done
