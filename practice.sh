#!/bin/bash
# Author : Dominic Pontious
# Date : 31Jan2019
# Here is the pratice bash script

echo "Please enter your first number: "
read numOne
echo "Now enter the second number: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is : $sum"
let prod=numOne*numTwo
echo "The product is : $prod"
echo "The File name is : $0"
echo "Command Line Argument 1 : $1"
grep $1 $2