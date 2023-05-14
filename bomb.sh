#!/bin/bash

# Download the zip file
curl -o sample.zip https://nuke.zip/sample.zip

# Check if 'unzip' command is available, otherwise use 'funzip'
if command -v unzip >/dev/null 2>&1; then
    unzip sample.zip
else
    echo "The 'unzip' command is not available. Using 'funzip' instead."
    for file in sample.zip; do
        output_file="${file%.zip}"
        funzip "$file" > "$output_file"
    done
fi
