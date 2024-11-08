
#!/bin/bash

db_file="DB.txt"
grep "$1" "$db_file"

if [ $? -ne 0 ]; then
    echo "해당 이름의 정보가 없습니다."
fi



