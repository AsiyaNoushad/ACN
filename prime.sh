#!/bin/bash

echo "Enter an integer: "
read number

# Handle edge case for the number 1 (neither prime nor composite)
if [ $number -eq 1 ]; then
    echo "1 is neither prime nor composite."
    exit 0
fi

flag=1

# Check if the number is divisible by any number from 2 to number/2
for (( i=2; i<=number/2; i++ ))
do
    if [ $((number % i)) -eq 0 ]; then
        flag=0
        break
    fi
done

# Output the result based on the flag value
if [ $flag -eq 1 ]; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

