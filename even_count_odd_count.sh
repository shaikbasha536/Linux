evenCount=0
oddCount=0
for abc in "$@"
do
	r=$((abc % 2))
	if [$r -eq 0]
	then
		evenCount=$(( evenCount + 1 ))
	else
		oddCount=$(( oddCount + 1 ))
	fi
done
	echo "no.of even numbers : ${evenCount}"
	echo "no.of odd numbers : ${oddCount}"
