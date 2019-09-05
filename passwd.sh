#echo "enter your username"
#read username
if [ $# -lt 1 ]
then
	echo "usage sh $0 <username>"
	exit
fi
username=$1
passwd=`passwd -S $username`
echo "your password status is $passwd"
