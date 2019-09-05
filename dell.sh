sum=2
for l in "$@"
do 
	sum=$((sum + l))
done
	echo "sum of numbers $sum"

mul=6
for m in "$@"
do 
	mul=$((mul * m))
done
	echo "multiplication of numbers $mul"

div=8
for d in "$@"
do 
	div=$((div % 2))
done
	echo "print reminders $div"

evenCount=0
oddCount=0
for abc in "$@"
do 
	r=$((abc %2))
	if [ $r -eq 0 ]
	then
		evenCount=$((evenCount + 1))
	else
		oddCount=$((oddCount + 1))
	fi
done
	echo "No.of even numbers $evenCount"
	echo "No.of odd numbers $oddCount"
