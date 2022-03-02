#!/bin/bash -x

read -p "enter lower limit:" a
read -p "enter upper limit:" b

index=0
for(( i = a; i <= b; ))
do
    if (( i % 11 == 0 ))
    then
        array[index++]=$i
        (( i += 11))
    else
        (( i++ ))
    fi
done
echo "The required numbers are: "
echo "${array[@]}"
