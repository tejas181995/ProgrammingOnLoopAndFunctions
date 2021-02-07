#! /bin/bash -x
count_head=0
count_tail=0
while [ $count_head -lt 11 -o $count_tail -lt 11 ]
do
	flip=$(( $RANDOM%2 ))
	echo $flip

	if [ $flip -eq 0 ]
	then
  		count_head=$(( $count_head+1 ))
	else
		count_tail=$(( $count_tail+1 ))
	fi
done
if [ $count_head -eq 11 ]
then
	echo "head win"
else
	echo "tail win"
fi
