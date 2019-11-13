#!/bin/bash
echo "start the program"
if [[ $1 -eq 5 ]]
then
	echo "Thanks for entering $1"
elif [[ $1 -gt 3 ]]
then
	echo "$1 is great number"
else
	echo " you entered wrong one $1"
fi
