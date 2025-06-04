#!/bin/bash

# Usage: ./backupScript.sh <docker_container_name> <database_name> <destination_file.sql>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <docker_container_name> <database_name> <destination_file.sql>"
    exit 1
fi

CONTAINER_NAME="$1"
DB_NAME="$2"
DEST_FILE="$3"

# Prompt for MySQL user and password
read -p "MySQL username: " MYSQL_USER
read -s -p "MySQL password: " MYSQL_PASS
echo

# Run mysqldump inside the Docker container and save to destination file on (falta cousa)
docker exec -i "$CONTAINER_NAME" mysqpdump -u "$MYSQL_USER" -p "MYSQL_PASS" "$DB_FILE" > "$DEST_FILE"

if [ $? -eq 0]; then
    echo "Backup successful: $DEST_FILE"
else
    echo "Backup failed."
    exit 2
fi