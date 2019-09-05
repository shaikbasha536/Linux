echo "enter filename"
read file_name
echo "entered file name is ${file_name}"

echo "enter pattern"
read pattern
echo "entered pattern is ${pattern}"

if [ -z $file_name -a -z $pattern ]
then 
	echo "you entered null file or pattern"
	echo "program terminated"
exit 1
fi

grep $pattern $file_name
