#!/bin/bash
# scripts/rollback.sh

CONFIG_DIR="/config"
MY_CNF_FILE="$CONFIG_DIR/my.cnf"
MIGRATIONS_CONFIG_FILE="$CONFIG_DIR/migrations.json"

# Check for jq
if ! command -v jq &> /dev/null; then
    echo "jq command not found. Please install jq."
    exit 1
fi

# Rollback version to be executed
MIGRATION_VERSION=$1
if [ -z "$MIGRATION_VERSION" ]; then
    echo "You must specify the version to rollback. Example usage: ./rollback.sh 001"
    exit 1
fi

# Locate and execute the rollback file
ROLLBACK_DIR=$(jq -r '.rollback.rollback_directory' "$MIGRATIONS_CONFIG_FILE")
ROLLBACK_FILE="$ROLLBACK_DIR/$MIGRATION_VERSION.rollback.sql"
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$MIGRATIONS_CONFIG_FILE")
DB_NAME=$(jq -r '.database' "$MIGRATIONS_CONFIG_FILE")
MIGRATION_TABLE=$(jq -r '.migration_table' "$MIGRATIONS_CONFIG_FILE")

# Create logs directory if it doesn't exist
mkdir -p "$(dirname "$ERROR_LOG_FILE")"

if [[ -f "$ROLLBACK_FILE" ]]; then
    echo "Starting rollback operation: $ROLLBACK_FILE"
    if mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" < "$ROLLBACK_FILE"; then
        echo "Rollback operation completed."
        
        # Delete the rolled back migration record from the migration table and update JSON
        mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" -e "DELETE FROM $MIGRATION_TABLE WHERE version = '$MIGRATION_VERSION';"

        # Remove the rolled back version from applied_versions in JSON
        jq --arg version_to_remove "$MIGRATION_VERSION" \
           '.versioning.applied_versions -= [$version_to_remove]' \
           "$MIGRATIONS_CONFIG_FILE" > "$MIGRATIONS_CONFIG_FILE.tmp" && mv "$MIGRATIONS_CONFIG_FILE.tmp" "$MIGRATIONS_CONFIG_FILE"

        # Update current_version by retrieving the last version from applied_versions
        NEW_CURRENT_VERSION=$(jq -r '.versioning.applied_versions | last // empty' "$MIGRATIONS_CONFIG_FILE")
        
        # If there is no new current_version, leave it empty instead of null
        if [ -z "$NEW_CURRENT_VERSION" ]; then
            jq '.versioning.current_version = ""' "$MIGRATIONS_CONFIG_FILE" > "$MIGRATIONS_CONFIG_FILE.tmp" && mv "$MIGRATIONS_CONFIG_FILE.tmp" "$MIGRATIONS_CONFIG_FILE"
        else
            jq --arg new_current_version "$NEW_CURRENT_VERSION" \
               '.versioning.current_version = $new_current_version' \
               "$MIGRATIONS_CONFIG_FILE" > "$MIGRATIONS_CONFIG_FILE.tmp" && mv "$MIGRATIONS_CONFIG_FILE.tmp" "$MIGRATIONS_CONFIG_FILE"
        fi
    else
        echo "An error occurred during the rollback operation." | tee -a "$ERROR_LOG_FILE"
    fi
else
    echo "Rollback file not found: $ROLLBACK_FILE" | tee -a "$ERROR_LOG_FILE"
fi
