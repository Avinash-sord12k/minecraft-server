#!/bin/bash

# Log file path
LOG_FILE="./data/save_progress.log"

# Infinite loop to save progress every 10 seconds
while true; do
  # Get the current timestamp
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  
  # Execute save command and log the output
  if rcon-cli save-all; then
    echo "$TIMESTAMP: World saved successfully." >> "$LOG_FILE"
  else
    echo "$TIMESTAMP: Failed to save the world." >> "$LOG_FILE"
  fi
  
  # Wait for 10 seconds before the next save
  sleep 120
done
