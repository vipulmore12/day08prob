##!/bin/bash -x
declare -A Year92
Year92=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0);

declare -A Year93
Year93=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0);

count=1;
while [ $count -le 50 ]
do
	n=$((RANDOM%2))
	if [ $n -eq 0 ]
	then
	ran=$((RANDOM%12+1))

	((Year92[$ran]++))

	fi

	if [ $n -eq 1 ]
	then
	ran=$((RANDOM%12+1))
	((Year93[$ran]++))
	fi

	count=$(($count+1));
done
echo "In the Year 92...";

for key in ${!Year92[@]}
do
	echo "Month $key --> ${Year92[$key]}";
done
echo -e "\n";

echo "In the Year 93...";

for key in ${!Year93[@]}
do
	echo "Month $key --> ${Year93[$key]}";
done

echo -e "\n"

echo "Total number of births in each month..!"

for key in ${!Year93[@]}
do
echo "In Month $key - $((${Year92[$key]} + ${Year93[$key]})) are born..!"
done
