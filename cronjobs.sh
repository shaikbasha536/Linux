#!/bin/bash
if [ $# -lt 1 ]
then
	echo "usage sh $0 <username>"
	exit 
fi	
username=$1
cronjobs=`crontab -u $username -l | wc -l`
echo "your current running cronjobs are $cronjobs"
#!/bin/bash
#if [ $# -lt 1 ]
#then 
#	echo usage sh $0 <username>
#	exit 
#fi 
#username=$1
#cronjobs=*/1 * * * * /home/shaikbasha536/Documents/cal >> /home/shaikbasha536/Documents/cron.sh
