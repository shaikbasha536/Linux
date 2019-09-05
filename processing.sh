#!/bin/bash
echo "enter 1st string"
read st1
echo "enter 2nd string"
read st2
if [ "$t1" \< "$t2" ]
then
	echo "$t1 is smaller than $t2"
elif [ "$t1" \> "$t2" ]
then
	echo "$t2 is smaller than $t1"
else 	
	echo "both strings are equal"
fi
