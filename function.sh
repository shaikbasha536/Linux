#!/bin/bash
function add 
{
	echo "This is add functions"
	a=$1
	b=$2
	c=$((a + b))
	return $c
}
	add 10 20
 	echo $?
function mul div
{
	echo "this is multiplication functions"
	d=$1
	e=$2
	f=$((d *e))
	return $f
}
	mul 2 3
	echo $?
function logger
{
	echo "[`date '+%F %T'`]"

}
	logger "this is log message"

