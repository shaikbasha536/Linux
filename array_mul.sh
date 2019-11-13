sum=1
for l in "$@"
do
sum=$((sum * l))
done
echo "Multiplication of numbers $sum"
