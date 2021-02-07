#! /bin/bash -x

# Constant

IS_PRESENT_FULLTIME=1
IS_PRESENT_HALFTIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKINGDAYS=5
# variable

totalWorkHrs=0

# for loop
for (( counter=1; counter<=$NO_OF_WORKINGDAYS; counter++ ))
do
	empCheck=$(( $RANDOM%3 ))

#condition

case $empCheck in

        $IS_PRESENT_FULLTIME ) empHrs=8 ;;

        $IS_PRESENT_HALFTIME ) empHrs=4 ;;

        *) empHrs=0  ;;
esac
totalWorkHrs=$(( $totalWorkHrs + $empHrs ))

#salary=$(( $empHrs * $EMP_RATE_PER_HR  ))
done
salary=$(( $EMP_RATE_PER_HR * $totalWorkHrs ))



