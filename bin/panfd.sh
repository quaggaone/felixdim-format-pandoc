#!/bin/bash

# Get the directory where this script is located
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check if a markdown file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <markdown_file>"
    exit 1
fi

# Input markdown file path
input_file=$1

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found!"
    exit 1
fi

# Extract directory of the input markdown file
input_dir=$(dirname "$input_file")

# Verify that pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "pandoc could not be found. Please install it and make sure it's in your PATH."
    exit 1
fi

# Define the output PDF file path as "<input_directory>/<file_name>.pdf"
output_file="${input_dir}/$(basename "$input_file" .md).pdf"

# Convert markdown to pdf using pandoc with template from script location
pandoc "$input_file" -o "$output_file" --pdf-engine=typst --template="${script_dir}/../share/pandoc/templates/felixdim-format.typ"

# Check if the conversion was successful and provide feedback
if [ $? -eq 0 ]; then
    echo "Conversion successful. PDF saved at: $output_file"
else
    echo "An error occurred during conversion."
    exit 1
fi
