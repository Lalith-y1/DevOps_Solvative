#!/bin/bash

DB_USER="username"
DB_PASS="password"
DB_NAME="database_name"

BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +"%Y-%m-%d_%H%M%S")
BACKUP_FILE="$DB_NAME-$DATE.sql"

# MySQL dump command
mysqldump -u$DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/$BACKUP_FILE

# Check if mysqldump command was successful
if [ $? -eq 0 ]; then
    echo "MySQL backup completed successfully: $BACKUP_DIR/$BACKUP_FILE"
else
    echo "Error: MySQL backup failed!"
fi
