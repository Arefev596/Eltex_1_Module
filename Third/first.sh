#!/bin/bash

cd 3_lab_eltex
for ((i = 1; i< 11; i++))
do
	mkdir -p test_${i}
	cd test_${i}
	for ((y=1; y<11; y++))
	do
		mkdir -p test_test_${y}
		touch test_test_${y}/f{1..200}.txt
	done
	cd ..		
done

