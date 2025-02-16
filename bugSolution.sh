#!/bin/bash

# Improved script with error handling

filename="my_file.txt"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi

while IFS= read -r line; do
  echo "Processing line: $line"
  # Add your file processing logic here
done < "$filename"

#You can add more robust error handling like trapping signals (e.g., SIGPIPE) to manage interruptions more smoothly.