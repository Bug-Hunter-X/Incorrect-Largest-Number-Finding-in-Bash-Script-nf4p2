#!/bin/bash

# Improved script to find the largest number, handling negative numbers and non-numeric input.

# Check if any arguments are provided.
if [ $# -eq 0 ]; then
  echo "Usage: $0 <number1> <number2> ..."
exit 1
fi

largest=$1

for i in "$@"; do
  # Check if the argument is a number
  if [[ ! "$i" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Non-numeric argument '$i' provided."
    exit 1
  fi
  if (( i > largest )); then
    largest=$i
  fi
done

echo "The largest number is: $largest"