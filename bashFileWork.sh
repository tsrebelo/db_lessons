#!/bin/bash

# This script is used to create a new file and write some text into it.
# It also checks if the file already exists and prompts the user for config
# Usage: ./bashFileWork.sh <filename>

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
