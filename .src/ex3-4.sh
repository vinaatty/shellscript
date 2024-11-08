#!/bin/bash

echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
	*[Yy][Ee][Ss]*)
		echo "yes"
	;;
	[Yy])
                echo "yes"
        ;;
	*[Nn][Oo]*)
		echo "no"
	;;
	[Nn])
		echo "no"
	;;
	*)
		echo "yes 또는 no로 입력해주세요"
	;;
esac

