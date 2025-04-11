#!/bin/bash
# This script demonstrate the use of variables, loops, and conditions

#Define a variable
greeting="Hello World!"

#Print the greeting
echo $greeting

#Define an array
fruits=("apple" "banana" "cherry")

#Print the first elemente of the array
echo "The first fruit is: ${fruits[0]}"

#Print the array elements
for fruit in "${fruits[@]}"; do
    echo $fruit
done

#Define a function
function greet(){
    local name1=$1
    local name2=$2
    echo "Hello, $name1!"
    echo "Hello, $name2!"
}

#Call the function with an argument
greet "Telma" "Bob"