#!/bin/bash

# Declare an array with 4 elements
name=("John" "Mike" "Sara" "Tom")

# Print the length of the array
echo ${#name[@]}

# Print the full array at once
echo "Array: ${name[@]}"

# Print the names and their lengths
for((i=0; i<${#name[@]}; i++))
do
    echo "My name is ${name[i]}"
    echo "The length of ${name[i]} is ${#name[i]}"
done