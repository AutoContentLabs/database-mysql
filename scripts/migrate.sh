#!/bin/bash
# scripts/migrate.sh

echo "Migration start"
CONFIG_DIR="/config"
MY_CNF_FILE="$CONFIG_DIR/my.cnf"
MIGRATIONS_CONFIG_FILE="$CONFIG_DIR/migrations.json"

USER_NAME=$(whoami)
HOST_NAME=$(hostname)
APPLIED_BY="$USER_NAME@$HOST_NAME"

# Check for jq command
if ! command -v jq &> /dev/null; then
    echo "jq command not found. Please install jq."
    exit 1
fi

# Wait for MySQL service to be ready
echo "Waiting for MySQL to be ready..."
until mysql --defaults-extra-file="$MY_CNF_FILE" -e "SELECT 1" &> /dev/null; do
    sleep 2
    echo "MySQL is not ready. Waiting..."
done
echo "MySQL is ready. Starting migrations."

# Load configurations from the config file
DB_NAME=$(jq -r '.database' "$MIGRATIONS_CONFIG_FILE")
MIGRATIONS_DIRECTORY=$(jq -r '.migrations_directory' "$MIGRATIONS_CONFIG_FILE")
MIGRATION_TABLE=$(jq -r '.migration_table' "$MIGRATIONS_CONFIG_FILE")
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$MIGRATIONS_CONFIG_FILE")

# Create logs directory if it doesn't exist
mkdir -p "$(dirname "$ERROR_LOG_FILE")"

# Create migration table if it doesn't exist
mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" <<EOF
CREATE TABLE IF NOT EXISTS $MIGRATION_TABLE (
    version VARCHAR(255) PRIMARY KEY,
    description TEXT,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('applied', 'rolled_back', 'pending') DEFAULT 'applied',
    applied_by VARCHAR(255)
);
EOF

# Execute migration files in order
for migration_file in "$MIGRATIONS_DIRECTORY"/*.sql; do
    migration_version=$(basename "$migration_file" .sql)

    # Check if it has been applied before
    APPLIED=$(mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" -se "SELECT COUNT(*) FROM $MIGRATION_TABLE WHERE version = '$migration_version';")
    if [[ "$APPLIED" -gt 0 ]]; then
        echo "$migration_file has already been applied, skipping."
        continue
    fi

    echo "Applying migration: $migration_file"

    # Check if migration file exists
    if [ ! -f "$migration_file" ]; then
        echo "Migration file $migration_file not found, skipping."
        continue
    fi

    # Use the migration file name as the description
    description="Migration: $migration_version"

    if mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" < "$migration_file"; then
        mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" -e "INSERT INTO $MIGRATION_TABLE (version, description, applied_by) VALUES ('$migration_version', '$description', '$APPLIED_BY');"
        echo "$migration_file applied successfully."

        # Update current_version and applied_versions in JSON
        jq --arg new_version "$migration_version" \
           '.versioning.current_version = $new_version | .versioning.applied_versions += [$new_version]' \
           "$MIGRATIONS_CONFIG_FILE" > "$MIGRATIONS_CONFIG_FILE.tmp" && mv "$MIGRATIONS_CONFIG_FILE.tmp" "$MIGRATIONS_CONFIG_FILE"
    else
        echo "An error occurred while applying $migration_file. Check error log for details." | tee -a "$ERROR_LOG_FILE"
        mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DB_NAME" -e "SHOW WARNINGS;" >> "$ERROR_LOG_FILE"
    fi
done
