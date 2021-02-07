#! /bin/bash

function palindrome(){
    local n1=$1
    local n2=$2
    local newnum=0
    while [ $n1 -gt 0 ]
    do
        newnum=$(( newnum*10 ))
        newnum=$(( newnum+$n1%10 ))
        n1=$(( $n1/10 ))
    done
    if [ $newnum -eq $2 ]
    then
        echo "$1 and $2 are palindrome"
    else
        echo "$1 and $2 are not palindrome"
    fi

        
}

read -p "Enter Number 1: " n1
read -p "Enter Number 2: " n2

echo "$( palindrome $n1 $n2 )"
