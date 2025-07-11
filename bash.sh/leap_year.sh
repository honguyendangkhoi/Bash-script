#!/bin/bash

read -p "type a year: " year

if(( $year%400 == 0 || $year%4 == 0 && $year%100 != 0 )); then
echo "$year was a leap year"
else
echo "$year was not a leap year"
fi
