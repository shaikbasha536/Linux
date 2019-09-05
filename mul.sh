function mul
{
	echo "This is multiplication functions"
	a=$1
	b=$2
	c=$((a *b))
	return $c
}
mul 2 3
echo $?
