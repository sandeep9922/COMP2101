#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

prompt="Enter a number "
read -p "$prompt" usernumber1
read -p "$prompt" usernumber2
read -p "$prompt" usernumber3

echo "User gave us $usernumber1 and $usernumber2 and $usernumber3"


sum=$((usernumber1 + usernumber2 +usernumber3))
echo $sum sum

product=$((usernumber1 * usernumber2 * usernumber3))
echo $product product
