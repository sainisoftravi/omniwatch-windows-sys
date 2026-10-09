# Omniwatch Windows Deployment Guide

## Quick Deployment (1-Click Scripts)

### Option 1: PowerShell (Windows)
Open PowerShell as Administrator in this folder and run:
```powershell
.\deploy.ps1
```

*(If script execution is restricted in your PowerShell session, run: `powershell -ExecutionPolicy Bypass -File .\deploy.ps1`)*

### Option 2: Git Bash / Linux
Open Git Bash in this folder and run:
```bash
./deploy.sh
```

---

## Manual Steps

### 1. Load All Docker Images:
**PowerShell:**
```powershell
Get-ChildItem -Filter *.tar | ForEach-Object { docker load -i $_.FullName }
```

**Git Bash:**
```bash
for f in *.tar; do
  docker load -i "$f" || break
done
```

### 2. Start Application:
```bash
docker compose up -d
```

### 3. Restore Database Backup:
*(Make sure MySQL is healthy first before restoring)*

**PowerShell:**
```powershell
Get-Content -Raw "database-backup\backup.sql" | docker exec -i mysql mysql -h localhost -u root -pjhabsjajsdjashdj oomnieye_construction
```

**Git Bash:**
```bash
docker exec -i mysql mysql -h localhost -u root -pjhabsjajsdjashdj oomnieye_construction < database-backup/backup.sql
```

### 4. Create Database Dump:
**PowerShell:**
```powershell
docker exec -i mysql mysqldump -h localhost -u root -pjhabsjajsdjashdj oomnieye_construction > database-backup/backup.sql
```

**Git Bash:**
```bash
docker exec -i mysql mysqldump -h localhost -u root -pjhabsjajsdjashdj oomnieye_construction > database-backup/backup.sql
```
