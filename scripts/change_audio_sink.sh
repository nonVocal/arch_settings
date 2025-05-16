#! /usr/bin/bash

getdevices() {\
	devices_str="$(pactl list sinks short)"

	OIFS=$IFS
	IFS=$'\n'

	for d in $devices_str
	do
		echo $d
	done

	IFS=$OIFS


	#echo $devices_str
}

getdevices
