#!/bin/bash
now=`date +%s`
r=$((now))
if [ $r -eq 0 ]
then 
	echo "current movement is even"
else
	echo "current movement is odd"
fi
