#!/bin/bash

list_files() {
	echo "함수 안으로 들어왔음"
	ls "$@"
}

echo "프로그램을 시작합니다."

list_files "$@"

echo "프로그램을 종료합니다."
