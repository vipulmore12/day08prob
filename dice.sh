##!/bin/bash -x

declare -A Dice
Dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0);

while [ True ]
do

        ran=$((RANDOM%6+1));
        ((Dice[$ran]++));

        if [ "${Dice[$ran]}" -eq 10 ]
        then
                large=$ran;
                break
        fi

done

for key in "${!Dice[@]}"
do
        echo "$key : ${Dice[$key]}";
done

small=1;
a="${Dice[2]}";

for key in "${!Dice[@]}"
do

        if [[ ${Dice[key]} -lt $a ]]
        then
                small=$key;
        else
                small=$a;
        fi

done


echo "The number with highest number is $large occured ${Dice[$large]} times";
echo "The number with lowest number is $small with ${Dice[$small]} times ";
