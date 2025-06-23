#!/bin/bash

arr=()
read -p "how many elements your want: " mang
for(( i=0; i<$mang; i++ ))
do
read -p "Type your element: " num
arr+=($num)
echo "your array: ${arr[@]}"
done
sorted=($(for n in "${arr[@]}"; do
echo $n
done | sort -n))
echo "your array after sorted: ${sorted[@]}"

sleep 1
read -p "type a number you are looking for: " number
found=0
for input in ${arr[@]}
do
if [[ $input == $number ]]; then
echo "you have number $number"
found=1
exit 1
fi
if [[ $found -eq 0 ]]; then
echo "you dont have number $number"
exit 0
fi
done
