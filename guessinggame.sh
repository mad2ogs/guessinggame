#!/bin/bash
# File: guessinggame.sh
# Created by Thiago Trancoso de Morais

# Updates 
# 2017-12-29 - 1.0 - Creation
# 2017-12-29 - 1.1 - Added interger check to validate users' input

function check_number {
	if [ $1 -lt $2 ]; then
		echo "Number too low"
	elif [ $1 -gt $2 ]; then
		echo "Number too high"
	else
		echo ""
		echo "That's right. Congratualations!"
	fi
}

file_count=$(find . -type f | wc -l)

while [[ $file_count -ne $number ]]; do
	read -p "How many files are in the current directory? Please enter a number: " number
	if [[ $number =~ ^[0-9]+$ ]]; then
		echo $(check_number $number $file_count)
		echo "" 
	else
		echo "Please enter a valid number (integers only)"
		echo ""
	fi
done

exit 0
