#!/bin/bash

arguments=("$@")

for arg in "${arguments[@]}"
do
    echo $arg
done
echo "Total number of arguments: $#"

echo "First argument: $1"
