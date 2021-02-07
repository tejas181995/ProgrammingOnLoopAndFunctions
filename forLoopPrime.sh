#! /bin/bash -x 

read -p "enter a number: " num
flag=0
for (( i=2 ;i<$num; i++))
do 
	if [ $(( $num%$i )) -eq 0 ]
	then
		echo "number $num is not prime"
		flag=1
		break
	fi
done

if [ $flag -eq 0 ]
then
	echo "number $num is prime"
fi


