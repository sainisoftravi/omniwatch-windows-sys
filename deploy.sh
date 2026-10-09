#!/bin/bash
set -e

# ==============================================================================
# Omniwatch Git Bash / Linux Deployment Script
# 1. Loads all .tar Docker images in the directory
# 2. Starts all services with docker compose up -d
# 3. Waits for MySQL to be ready/healthy
# 4. Restores the database backup (database-backup/backup.sql)
# ==============================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "=========================================================="
echo " [Step 1/4] Loading Docker images from .tar files..."
echo "=========================================================="

for f in *.tar; do
  [ -e "$f" ] || continue
  echo ">>> Loading $f..."
  docker load -i "$f"
done

echo ""
echo "All Docker images loaded successfully!"
echo ""

echo "=========================================================="
echo " [Step 2/4] Starting containers with docker compose..."
echo "=========================================================="

docker compose up -d

echo ""
echo "Containers created and starting!"
echo ""

echo "=========================================================="
echo " [Step 3/4] Waiting for MySQL to become ready/healthy..."
echo "=========================================================="

RETRIES=30
until [ $RETRIES -le 0 ]; do
  STATUS=$(docker inspect --format='{{json .State.Health.Status}}' mysql 2>/dev/null | tr -d '"')
  if [ "$STATUS" == "healthy" ]; then
    echo "MySQL is healthy!"
    break
  fi
  echo "Waiting for MySQL healthcheck... ($RETRIES attempts left) [Status: $STATUS]"
  sleep 3
  RETRIES=$((RETRIES-1))
done

if [ $RETRIES -le 0 ]; then
  echo "MySQL failed to become healthy. Aborting database restore."
  exit 1
fi

echo ""
echo "=========================================================="
echo " [Step 4/4] Restoring database backup..."
echo "=========================================================="

if [ -f "database-backup/backup.sql" ]; then
  echo "Restoring database-backup/backup.sql into database 'oomnieye_construction'..."
  docker exec -i mysql mysql -h localhost -u root -pjhabsjajsdjashdj oomnieye_construction < database-backup/backup.sql
  echo ""
  echo "Database backup restored successfully!"
else
  echo "Error: database-backup/backup.sql not found!"
  exit 1
fi

echo ""
echo "=========================================================="
echo " Deployment Complete! Current Container Status:"
echo "=========================================================="
docker compose ps
