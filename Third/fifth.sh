#!/bin/bash

source cfg.txt

cat /var/log/syslog | grep "$Process" | awk -v mont="$Month" -v star="$DayBeg" -v en="$DayEnd" '{ if ($1 == mont && $2 >= star && $2 <= en) print $1, $2, $3, $5}'

