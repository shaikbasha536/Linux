sum=0
mul=1
for p in "$@"
do
	r=$((p % 2))
	if [ $r -eq 0 ]
	then
	sum=$((sum + p))
	else
	mul=$((mul * p))
	fi
done
	echo "sum of all even numbers $sum"
	echo "multiplication of all odd numbers $mul"
