#! /bin/bash 

read -p "enter start number: " start
read -p "enter end number:" end
count=0
flag=0
for (( i=$start ;i<$end; i++))
do 
	flag=0
	if [ $i -eq 1 ]
	then
		echo " number 1 is not prime"
		flag=1
	fi
	for (( j=2; j<$i;j++ ))
	do
		if [ $(($i%$j )) -eq 0 ] 
		then
		echo "number $i is not prime"
		flag=1
		break
		fi
	done
	if [ $flag -eq 0 ]
	then
		 echo "number $i is prime"
	       	count=$(( $count+1))
	fi
done
echo "total prime numbers are $count"


