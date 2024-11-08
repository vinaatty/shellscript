#!/bin/bash

# 인자가 2개인지 확인
if [ "$#" -ne 2 ]; then
    echo "사용법: $0 <몸무게(kg)> <신장(cm)>"
    exit 1
fi

# 인자 변수에 저장
weight=$1
height=$2

# 신장을 미터로 변환
height_m=$(echo "scale=2; $height / 100" | bc)

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

# 비만 여부 판단
if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
    echo "정상 체중입니다."
elif (( $(echo "$bmi >= 23" | bc -l) )); then
    echo "과체중입니다."
fi


