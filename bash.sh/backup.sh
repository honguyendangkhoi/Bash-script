#!/bin/bash

SOURCE_DIR="/home/khoiho1234/Downloads"
BACKUP_DIR="/home/khoiho1234"

TIMESTAMP=$(date +"%H%M%S_%d%m%Y")

BACKUP_FILE="${BACKUP_DIR}/backup_${TIMESTAMP}.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

if [ -f "$BACKUP_FILE" ]; then
echo "backup complete" $BACKUP_FILE
else
echo "backup failed"
fi
