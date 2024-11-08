#!/bin/bash

db_file="DB.txt"

if [ ! -f "$db_file" ]; then
    echo "$db_file"

fi

echo "$*" >> "$db_file"


