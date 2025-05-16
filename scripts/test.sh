#!/bin/bash


test="$(wpctl status)"

OIFS=$IFS
#IFS="\n"

inAudio=0
inSinks=0

y=0

for x in $test
do
	#echo "$y"
	#y=$(echo "scale=2; $y + 1" | bc)

	echo "$x\n"

	if [[ "$x" == "Audio\n" ]]; then
		inAudio=1
		echo "--------------"
	elif [[ "$x" == " |- Sinks:\n" ]]; then
		inSinks=1 
		echo "--------------"
	elif [[ "$x" == " |- Sources:\n" && "$inSinks" == 0 ]]; then
		inSinks=0
		inAudio=0
		echo "--------------"
	fi

	if [[ "$inAudio" == 1 && "$inSinks" == 1 ]]; then
		echo "$x"
	fi
done

IFS=$OIFS








