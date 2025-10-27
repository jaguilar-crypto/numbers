#!/bin/bash
# numbers.sh - Print numbers from 1 to N with Odd/Even labels

read -r -p "Please enter a positive integer: " number


if ! [[ "$number" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Please enter a valid positive integer."
    exit 1
fi

for (( i=1; i<=number; i++ ))
do
    if (( i % 2 == 0 )); then
        echo "$i Even"
    else
        echo "$i Odd"
    fi
done
