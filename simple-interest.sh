#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.

# Author: Upkar Lidder (IBM)
# Additional Authors:
# shravanishep

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = (p*t*r)/100

echo "Enter the principal:"
read -r p
echo "Enter rate of interest per year:"
read -r r
echo "Enter time period in years:"
read -r t

# Sanitize inputs (remove any carriage returns from Windows environments)
p=$(echo "$p" | tr -d '\r')
r=$(echo "$r" | tr -d '\r')
t=$(echo "$t" | tr -d '\r')

# Validate that inputs are not empty
if [ -z "$p" ] || [ -z "$r" ] || [ -z "$t" ]; then
    echo "Error: Principal, interest rate, and time period cannot be empty." >&2
    exit 1
fi

# Validate that inputs are non-negative numeric values (integers or decimals)
number_regex='^[0-9]+([.][0-9]+)?$'
if ! [[ "$p" =~ $number_regex ]] || ! [[ "$r" =~ $number_regex ]] || ! [[ "$t" =~ $number_regex ]]; then
    echo "Error: Invalid input. Please enter valid numeric values for principal, rate, and time." >&2
    exit 1
fi

# Calculate simple interest using awk for decimal precision
s=$(awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "%.2f", (p * t * r) / 100 }')

# Strip trailing .00 for whole number outputs while keeping decimal accuracy when applicable
s=$(echo "$s" | sed 's/\.00$//')

echo "The simple interest is: "
echo "$s"
