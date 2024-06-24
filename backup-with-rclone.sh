#!/bin/bash

# Define variables
BACKUP_SOURCE="node100:/home/debug-container"  # The source directory to be backed up
BACKUP_DESTINATION="/home/kubilay/Desktop/debug-container"  # The destination directory where the backup will be stored
LOG_FILE="/var/log/rclone-backup.log"  # The path to the log file for recording backup progress

# Perform the backup using rclone
rclone sync $BACKUP_SOURCE $BACKUP_DESTINATION --log-file=$LOG_FILE --log-level INFO

# Check the log for success or errors
if grep -q "Transferred:" $LOG_FILE; then
    echo "Backup completed successfully."
else
    echo "Backup encountered some issues. Please check the log file: $LOG_FILE"
fi
