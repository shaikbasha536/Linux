now=`date +%s`
r=$((now %2))
if [ $r -eq 0 ]
then
	echo "current movement is even"
else
	echo "current movement is odd"
fi
