#!/bin/bash

read -p "Enter the frequency: " freq
read -p "Enter procces name: " proc

while :
do
	if ps aux | grep -v grep | grep -v grep | grep -i $proc > /dev/null
	then
		echo "$proc is running!"
		sleep $freq
	else
		echo "$proc is not running!"
		$proc
		echo "$proc will start now"
		sleep $freq
	fi
done
