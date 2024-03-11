#!/bin/bash

# Read the input string from the command line argument
input_string=$1

# Reverse the string
reversed_string=$(echo "$input_string" | rev)

# Print the reversed string
echo "Reversed String: $reversed_string"
