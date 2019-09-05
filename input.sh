echo "enter file name"
read file_name
echo "entered filename is ${file_name}"
if [-z $file_name]
then	
	echo "you entered null file"
	echo "program terminated"
	exit 1
fi
echo "enter pattern to search"
read pattern
echo "entered pattern is ${pattern}"
if [-z $pattern]
then
	echo "you entered null pattern"
	echo "program terminated"
	exit 2
fi
grep ${pattern} ${file_name}
