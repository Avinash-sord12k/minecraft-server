#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="./world"  # The folder containing the world data
DEST_DIR="./data/world"

# Check if the source directory exists
if [ -d "$SOURCE_DIR" ]; then
  echo "World folder found. Copying to $DEST_DIR..."
  
  # Create the destination directory if it doesn't exist
  mkdir -p "$DEST_DIR"
  
  # Copy the world files to the destination
  cp -r "$SOURCE_DIR"/* "$DEST_DIR/"
  
  echo "World files copied successfully."
else
  echo "Error: World folder not found in $SOURCE_DIR. Please make sure it exists."
  exit 1  # Exit with an error code
fi
