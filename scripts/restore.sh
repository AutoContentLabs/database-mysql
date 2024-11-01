#!/bin/bash
# scripts/restore.sh

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
RESTORE_FILE="$1"  # First argument is the backup file to restore
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$MIGRATIONS_CONFIG_FILE")

# Check if restore file is provided
if [[ -z "$RESTORE_FILE" ]]; then
    echo "Usage: $0 <backup_file.sql>"
    exit 1
fi

# Check if the backup file exists
if [[ ! -f "$RESTORE_FILE" ]]; then
    echo "Backup file $RESTORE_FILE not found." | tee -a "$ERROR_LOG_FILE"
    exit 1
fi

# Restore process
echo "Restoring the database from $RESTORE_FILE..."
if mysql --defaults-extra-file="$MY_CNF_FILE" "$DB_NAME" < "$RESTORE_FILE"; then
    echo "Database restoration completed successfully from $RESTORE_FILE."
else
    echo "An error occurred during the restoration process." | tee -a "$ERROR_LOG_FILE"
    exit 1
fi
