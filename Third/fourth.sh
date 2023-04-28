#!/bin/bash

read -p "Enter month: " month 
read -p "Enter beginning of the gap: " beg
read -p "Enter the end of the gap: " end
read -p "Enter process name: " proc 

cat /var/log/syslog | grep "$proc" | awk -v mont="$month" -v star="$beg" -v en="$end" '{ if ($1 == mont && $2 >= star && $2 <= en) print $1, $2, $3, $5}'

