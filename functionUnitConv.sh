#! /bin/bash -x

function toCelcius(){
	local a=$1
	local degC= 

	echo $degC
}

function toFahrenheit(){
	local b=$1
	local degf=$(( ($b-32.00)*5.0/9.0 | bc ))

	echo $degf

}

read -p "enter 1 to convert celcius to fahremheit and 2 to fahrenheit: " sel

case $sel in

        1 )
        read -p "enter quantity to be convert: " degf
        degCelcius="$( toCelcius $degf )" 
	echo $degCelcius ;;
        2 )
         read -p "enter quantity to be convert: " degc
         degFahrenheit="$( toFahrenheit $degc )"
	 echo $degFahrenheit ;;

esac


