#!/bin/bash
if [ $# -lt 1 ]
then
	echo "usage sh $0 <username>"
	exit
fi

username=$1
userinfo=`grep "^${username}:" /etc/passwd`
userid=`echo $userinfo | awk -F: '{print $3}'`
usershell=`echo $userinfo | awk -F: '{print $NF}'`
userhome=`echo $userinfo | awk -F: '{print $(NF -1)}'`
usergroupid=`echo $userinfo | awk -F: '{print $4}'`
usergecos=`echo $userinfo | awk -F: '{print $5}'`
sharedcount=`awk -F: '{print $6}' /etc/passwd | grep ${userhome} | wc -l`

if [ $sharedcount -gt 1 ]
then
	shared="YES"
else
	shared="NO"
fi

echo "user name : $username"
echo "user id : $userid"
echo "usershell : $usershell"
echo "user Gid: $usergroupid"
echo "user gecos: $usergecos"
echo "user home: $userhome"
echo "user have shared dir (YES/NO): $shared"
