#!/bin/bash -x

MAXCOUNT=10
count=1

while [ $count -le $MAXCOUNT ]
do
	num[$count]=$((RANDOM%900+100))
	let "count +=1"
done

echo "${array[@]}"

max=secondMax=${num[1]}
min=secondMin=${num[1]}
for i in "${num[@]}"
do
	if [[ "$i"-gt "$max" ]]
 	then
  		secondMax="$max"
  		max="$i"
 	elif [[ "$i" -gt "$secondMax" && "$i" != "$max" ]]
 	then
  		secondMax="$i"
 	fi

	if [[ "$i"-lt "$min" ]]
 	then
  		secondMin="$min"
  		min="$i"
 	elif [[ "$i" -gt "$secondMin" && "$i" != "$min" ]]
 	then
  		secondMin="$i"
 	fi
done

echo "Secondmax=$secondMax"
echo "Secondmin=$secondMin"
