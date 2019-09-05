sum=2
for x in "$@" 
do 
echo $x
sum=$((sum % x))
done
echo "print reminders $sum"
