#!/bin/bash

# Check if the ./data/mods directory exists
if [ ! -d "./data/mods" ]; then
  echo "Directory ./data/mods does not exist. Creating it..."
  mkdir -p ./data/mods
fi

# Copy files from ./server-mods to ./data/mods
cp -r ./server-mods/* ./data/mods/

echo "Files copied successfully."
