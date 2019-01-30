#!/bin/bash
# Author: Jasper Niemeyer
# Date: 2019-01-30
# script follows here:

echo "Enter a number: "
read numOne
echo "Enter a second number: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is: $sum"
let prod=numOne*numTwo
echo "The product is: $prod"

echo "File Name: $0"
echo "Command Line Argument 1: $1"
echo "Arg 2: $2"
grep $1 $2
