#!/bin/bash

# Syntax for declaring a variable with a type: declare -t variable_name

# Declare a variable with an int type
declare -i num1=10
echo "Integer variable: $num1"

# Declare a variable with a string type in lowercase
declare -l lower="HELLO"
echo "Lowercase variable: $lower"

# Declare a variable with a string type in uppercase
declare -u upper="hello"
echo "Uppercase variable: $upper"

# Declare a variable with an array type
declare -a arr=(1 2 3 4 5)
echo "Array variable: ${arr[@]}"

# Declare a variable with an associative array type
declare -A arr_associative=([name]='Adrian' [age]=23)
echo "Associative array variable: ${arr_associative[@]}"
echo "Name in the associative array: ${arr_associative[name]}"

# Declare a variable with a read-only type
declare -r name="Adrian"
echo "Read-only variable: $name"
name="John" # This will throw an error

# Declare a global readonly variable, -g and -r can be used together
declare -g -r PI=3.14159
echo "Constant variable: $PI"
