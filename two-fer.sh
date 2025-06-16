#!/bin/bash

echo "list name [Alice, Bob, Zac]"

list=("Alice" "Bob" "Zac")
IFS=", "

read -p "type a name you know: " name

flag=0
for input in "${list[@]}"; do
if [ "$name" == "$input" ]; then
echo "You know $name too ? So do I"
flag=1
fi
done

if [ $flag -eq 0 ]; then
echo "Sorry ! no one match"
fi

sleep 1
read -p "Wanna add ? (1:absolutely / 2: maybe another time):  " choices

if [ "$choices" == "1" ]; then
read -p "sure ! type a name: " name1
list+=("$name1")
echo "cool ! here's your new list"
	for i in "${list[*]}"; do
echo "$i"
	done
fi

if [ "$choices" == "2" ]; then
echo "well, okay :( "
fi

while [ "$choices" != "1" ] && [ "$choices" != "2" ]; do
echo "Oops ! wrong number"
read -p "try again (1 or 2): " choices
done
