#! /bin/bash -x
hmn=1
for (( n=2 ;n<=$1 ;n++ ))
do
	hmn=`expr $hmn+(1/$n) | bc `
	 echo $hmn
done
	 

