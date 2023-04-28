#!bin/bash

read -p "Введите количество запусков: " skolko
for ((i=1; i<=$skolko; i++))
do
	(echo "bash fourth.sh" | at now + $i minute)
done
