#echo "enter your username"
#read "username"
if [ $# -lt 1 ]
then
	echo "usage sh $0 <username>"
	exit
fi
username=$1
process=`ps -u $username`
echo "$process"
