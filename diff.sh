while read line
do 
first=`echo $line | cut -d '|' -f2`
second=`echo $line | cut -d '|' -f3`
result=`echo "scale=2; $first - $second"| bc`
echo $line\|\|$result 

done < /home/shaikbasha536/Documents/salary1.txt  

