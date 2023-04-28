#!bin/bash
	step=$(cat "count.txt")
	step=$((step+1))
	(echo $step)>count.txt
	inform=$(echo "$(date) I run $step time")
	(printf "$inform\n")>>counter.txt
	cat "counter.txt"
