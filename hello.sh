name="basha"

echo "my name is $name"
if [ $name != "basha" ]
then
	echo command is one
elif [ $name = "basha" ]
then
	echo command is two
else
	echo command is three
fi
