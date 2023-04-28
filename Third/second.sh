#!/bin/bash

read -p "Enter amount of folders: " am_fol
read -p "Enter amount of folders_folders: " am_fol_fol
read -p "Enter amount of .txt files: " am_files
cd 3_lab_eltex
for ((i = 1; i <= ${am_fol}; i++))
do
	mkdir -p am_fol_${i}
	cd am_fol_${i}
	for ((y = 1; y <= ${am_fol_fol}; y++))
	do
		mkdir -p am_fol_fol_${y}
		eval "touch am_fol_fol_${y}/f{1..$am_files}.txt"
	done
	cd ..		
done

