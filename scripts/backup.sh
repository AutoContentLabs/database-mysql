#!/bin/bash
# scripts/backup.sh

CONFIG_DIR="/config"
MY_CNF_FILE="$CONFIG_DIR/my.cnf"
MIGRATIONS_CONFIG_FILE="$CONFIG_DIR/migrations.json"

# Check for jq command to process JSON files
if ! command -v jq &> /dev/null; then
    echo "jq command not found. Please install jq."
    exit 1
fi

# Load configurations
DB_NAME=$(jq -r '.database' "$MIGRATIONS_CONFIG_FILE")
BACKUP_ENABLED=$(jq -r '.backup.enabled' "$MIGRATIONS_CONFIG_FILE")
BACKUP_DIR=$(jq -r '.backup.backup_directory' "$MIGRATIONS_CONFIG_FILE")
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$MIGRATIONS_CONFIG_FILE")

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Backup process
if [[ "$BACKUP_ENABLED" == "true" ]]; then
    echo "Backing up the database..."
    BACKUP_FILE="$BACKUP_DIR/$(date +%F_%T)_$DB_NAME.sql"

    # Perform backup
    if mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-tablespaces --single-transaction "$DB_NAME" > "$BACKUP_FILE"; then
        echo "Backup completed: $BACKUP_FILE"
    else
        echo "An error occurred during the backup process." | tee -a "$ERROR_LOG_FILE"
        exit 1
    fi
else
    echo "Backup is disabled."
fi
