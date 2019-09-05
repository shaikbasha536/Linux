echo "enter your uname"
read uname 
user=`cat /etc/passwd | grep $uname`
username=`echo $user | awk -F : '{print $1}'`
echo "username is $username"
gid=`echo $user | awk -F : '{print $4}'`
echo "your group id is $gid"
home=`echo $user | awk -F : '{print $5}'`
echo "your home directory is $home"
loginshell=`echo $user | awk -F : '{print $7}'`
echo "your login shell is $loginshell"
shared=`cat /etc/passwd | grep "shaikbasha536" | wc -l`
if [ $shared -eq 1 ] 
then
	echo "you have one directory only"
else 
	echo "you dont have shared directory"
fi
