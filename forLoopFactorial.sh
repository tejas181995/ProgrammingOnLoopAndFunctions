#! /bin/bash -x

read -p "enter a number: " num
factorial=1
for (( i=1; i<=num; i++ ))
do
	factorial=$(( $factorial * $i ))
done
echo "factorial of $num is:" $factorial
