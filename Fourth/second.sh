#!/bin/bash

read -p "Enter time: " time
read -p "Enter name of music: " name
cd /home/aref596/Documents/4_lab/
echo "mplayer $name.mp3" | at $time
