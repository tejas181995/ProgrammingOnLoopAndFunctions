#! /bin/bash 

echo "Think of number between 1-100 and answer the following question "

start=0
end=100
mid=0
while [ $((($start+$end)/2)) -ne $mid  ]
do 
	temp=$(( $start+$end ))
	mid=$(( $temp/2 ))
	read -p "is number greater than $mid (y/n = 1/0 )" ans
	if [ $ans -eq 1 ]
	then
		start=$(( $mid+1 ))
	else

		end=$(( $mid ))
	fi
done

echo "your number is $mid"
