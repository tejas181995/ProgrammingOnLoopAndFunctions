#! /bin/bash -x

function add(){

	local a=$1
	local b=$2
	local sum=$(( $a + $b ))

	echo $sum

}

read -p "enter a:" a
read -p"enter b:" b

result="$( add $a $b )"
