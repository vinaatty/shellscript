#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
else
    echo "$folder_name 폴더가 이미 존재합니다."
fi

for i in $(seq 0 4); do
    echo "내용 ${i}" > "${folder_name}/file${i}.txt"
done

for i in $(seq 0 4); do
    subfolder="${folder_name}/file${i}"
    mkdir "$subfolder"
  
    ln -s "../file${i}.txt" "${subfolder}/file${i}.txt"
done
