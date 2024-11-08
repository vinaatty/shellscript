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

mkdir "${folder_name}/files"

for i in $(seq 0 4); do
    echo "내용 ${i}" > "${folder_name}/files/file${i}.txt"
done

tar -cvf "${folder_name}/files/files.tar" -C "${folder_name}/files" .


