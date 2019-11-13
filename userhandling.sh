#!/bin/bash
user_shell()
{
	user_name=$1
	user_login_shell=`grep "^${user_name}:" /etc/passwd | awk -F: '{print $NF}' | head -1`
	echo $user_login_shell
}
user_home()
{
	user_name=$1
	user_home=`grep "^${user_name}:" /etc/passwd | awk -F: '{print $NF-1}' | head -1`
	echo $user_home
}
user_id()
{
	user_name=$1
	user_id=`grep "^${user_name}:" /etc/passwd | awk -F: '{print $3}' | head -1`
	echo $user_id
}
user_gid()
{

	user_name=$1
	user_gid=`grep "^${user_name}:" /etc/passwd | awk -F: '{print $4}' | head -1`
	echo $user_gid
}
have_process()
{
	user=$1
	count=`ps -u ${user} | wc -l`
	count=$((count -1))
	if [ $count -gt 0 ]
	then
		echo "YES"
	else
		echo "NO"
	fi
}
have_jobs()
{
	user=$1
	count=`crontab -u ${user} -l 2>/dev/null | wc -l`
	if [ $count -gt 0 ]
	then
		echo "YES"
	else
		echo "NO"
	fi
}
users=`awk -F: '{print $1}' /etc/passwd`
echo "USER,LOGIN_SHELL,UID,GID,HOME,HAVE PROCESS?,HAVE JOBS?"
for user in ${users}
do
	shell=`$(user_shell ${user_name})`
	home=`$(user_home ${user_name})`
	id=`$(user_id ${user_name})`
	gid=`$(user_gid ${user_name})`
	have_running_process=`$(have_process ${user})`
	have_jobs=`$(have_jobs ${user})`
	echo "$user,$user_login_shell,$user_id,$user_gid,$have_running_process,$have_jobs"
done
