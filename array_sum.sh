sum=7
for l in $@
do
sum=$((sum + l))
done
echo "number of sums is $sum"