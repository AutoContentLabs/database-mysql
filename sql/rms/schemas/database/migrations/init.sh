#!/bin/bash

#!/bin/bash

# MySQL ayarları
DB_HOST="mysql"
DB_USER="${MYSQL_USER}"
DB_PASS="${MYSQL_PASSWORD}"
DB_NAME="${MYSQL_DATABASE}"

# Migration dizini
MIGRATION_DIR="/docker-entrypoint-initdb.d/migrations"

# MySQL sunucusunun başlatılmasını bekleyin
until mysql -h "mysql" -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SELECT 1"; do
    >&2 echo "MySQL is unavailable - sleeping"
    sleep 5
done

# Migration dosyalarını sırayla çalıştır
for file in "$MIGRATION_DIR"/*.sql; do
    echo "Executing $file"
    mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$file"
done


