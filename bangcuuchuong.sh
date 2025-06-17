#!/bin/bash
echo "hay nhap vao bang cuu chuong muon xem (1-10)"
read n

case $n in
1) 
echo "bang cuu chuong 1"
for i in {1..10}; do
echo "$(( 1*i ))"
done;;

2)
echo "bang cuu chuong 2"
for i in {1..10}; do
echo "$(( 2*i ))"
done ;;

3)
echo "bang cuu chuong 3"
for i in {1..10}; do
echo "$(( 3*i ))"
done ;;

4)
echo "bang cuu chuong 4"
for i in {1..10}; do
echo "$(( 4*i ))"
done ;;

5)
echo "bang cuu chuong 5"
for i in {1..10}; do
echo "$(( 5*i ))"
done ;;

6)
echo "bang cuu chuong 6"
for i in {1..10}; do
echo "$(( 6*i ))"
done ;;

7)
echo "bang cuu chuong 7"
for i in {1..10}; do
echo "$(( 7*i ))"
done ;;

8)
echo "bang cuu chuong 8"
for i in {1..10}; do
echo "$(( 8*i ))"
done ;;

9)
echo "bang cuu chuong 9"
for i in {1..10}; do
echo "$(( 9*i ))"
done ;;

10)
echo "bang cuu chuong 10"
for i in {1..10}; do
echo "$(( 10*i ))"
done ;;

esac
