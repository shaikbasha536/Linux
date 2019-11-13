#!/bin/bash
if [ $1 -gt 4 ] && [ $1 -lt 7 ]
then
if [ $1 -eq 4 ]
then
	echo "four"
elif [ $1 -eq 5 ]
then 	
	echo "five"
else
	echo "six"
fi
else
	echo " you entered $1 is wrong"
fi
