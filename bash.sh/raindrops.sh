#!/bin/bash

output=""
read -p "type a number: " num

if (( $num%3 == 0 )); then
output+="Pling"
fi

if (( $num%5 == 0 )); then
output+="Plang"
fi

if (( $num%7 == 0 )); then
output+="Plong"
fi

if (( $num%3 !=0 && $num%5 != 0 && $num%7 !=0 )); then
printf " $num "
fi

echo "$output"
