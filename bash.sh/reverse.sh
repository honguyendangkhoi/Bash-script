#!/bin/bash

read -p "Nhap: " name

reversed=$(echo "$name" | rev)

echo "Reverse: $reversed"
