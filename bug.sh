#!/bin/bash

# This script attempts to find the largest number in a list of numbers provided as command-line arguments.

# Check if any arguments are provided.
if [ $# -eq 0 ]; then
  echo "Usage: $0 <number1> <number2> ..."
exit 1
fi

largest=$1

for i in "$@" ; do
  if [ $i -gt $largest ]; then
    largest=$i
  fi
done

echo "The largest number is: $largest"