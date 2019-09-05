#!/bin/bash
if [ $1 -eq 4 ]
then	
	echo "$1 is my favourite number"
elif [ $1 -gt 4 ] 
then
	echo "$1 is great number"
else 
	echo "you entered $1 this is not iam looking for"
fi
