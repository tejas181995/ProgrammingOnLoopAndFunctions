#! /bin/bash 

function checkPrime(){
    flag=0
    num=$1
    for (( i=2 ;i<$num; i++))
    do 
    if [ $(( $num%$i )) -eq 0 ]
    then
        echo 0
        flag=1
        break
    fi
    done

    if [ $flag -eq 0 ]
    then
    echo $num 
    fi
}

function palindrome(){
    local n1=$1
    local newnum=0
    while [ $n1 -gt 0 ]
    do
        newnum=$(( newnum*10 ))
        newnum=$(( newnum+$n1%10 ))
        n1=$(( $n1/10 ))
    done
    echo $newnum 
}

read -p "enter a number: " num

result=$( checkPrime $num )
if [ $result -ne 0 ]
then
    echo "$num is prime"
else
    echo "$num is not prime"
fi
palindrome_num=$( palindrome $num )
result=$( checkPrime $palindrome_num )
if [ $result -ne 0 ]
then
    echo "$palindrome_num is prime" 
else
    echo "$palindrome_num is not prime" 
fi


