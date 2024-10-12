#!/bin/bash
# Backup directory
BACKUP_DIR="../backups"
WORLD_DIR="../data/world"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

apt-get update && apt-get install -y zip

# Create a timestamped backup
BACKUP_NAME="world-$(date +'%Y-%m-%d_%H:%M:%S').zip"
zip -r $BACKUP_DIR/$BACKUP_NAME $WORLD_DIR

# Print completion message
echo "Backup completed: $BACKUP_DIR/$BACKUP_NAME"
