#!/bin/bash


DOWNLOADS_DIR="$HOME/Downloads"  # Downloads folder path
TARGET_DIR="$HOME/Desktop/mustread"  # Path to move the file

for file in "$DOWNLOADS_DIR"/*_read.*; do
    # Check if the file exists if there is no match
    [ -e "$file" ] || continue

    # Extract filename without path
    filename=$(basename -- "$file")

    # Remove the _read part from filename because i think it'll be eye straining to see _read in all file names.
    newname="${filename/_read/}"

    # Move and rename the file to target directory
    mv "$file" "$TARGET_DIR/$newname"
    
    echo "Moved and renamed: $filename -> $newname"
done

