#!/bin/bash

echo "Service Setup Script"

read -p "Enter the program name (e.g., nginx, my_app): " program_name

# Use 'which' to find the full path of the program
program_path=$(which "$program_name")

# Error handling: Check if 'which' found the program
if [ -z "$program_path" ]; then
    echo "Error: Program '$program_name' not found in PATH. Please ensure it's installed and in your PATH."
    exit 1  # Exit the script with an error code (1)
fi

# Display the found program path (for testing)
echo "Program path found: $program_path"