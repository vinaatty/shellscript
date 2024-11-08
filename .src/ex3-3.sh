#!/bin/bash
weight=$1
height=$2

height_m=$(echo "scale=2; $height / 100" | bc)
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)
if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
    echo "정상 체중입니다."
elif (( $(echo "$bmi >= 23" | bc -l) )); then
    echo "과체중입니다."
fi


