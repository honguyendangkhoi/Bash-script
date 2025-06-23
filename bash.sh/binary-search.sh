#!/bin/bash

arr=()
read -p "how many elements your want: " mang
for (( i=0; i<$mang; i++ ))
do
read -p "Type your element: " num
arr+=($num)
echo "your array: ${arr[@]}"
done
left=0
right=$((${#arr[@]}-1))
sorted=( $(for n in "${arr[@]}";
do
echo $n
done | sort -n) )
echo "your array after sorted: ${sorted[@]}"

sleep 1
read -p "type a number you are looking for: " number
while [ $left -le $right ];
do
mid=$(( (left + right) / 2 ))
value=${sorted[$mid]}

if [[ $value -eq $number ]]; then
echo "you have number $number"
exit 0

elif [[ $value -lt $number ]]; then
left=$((mid + 1))

elif [[ $value -gt $number ]]; then
right=$((mid - 1))

fi
done

echo "you dont have number $number"
