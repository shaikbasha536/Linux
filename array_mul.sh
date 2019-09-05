sum=2
for i in $@
do 
sum=$((sum * i))
done 
echo "multiplication of numbers $sum"
