# ==============================================================================
# Omniwatch Windows Deployment Script
# 1. Loads all .tar Docker images in the directory
# 2. Starts all services with docker compose up -d
# 3. Waits for MySQL to be ready/healthy
# 4. Restores the database backup (database-backup/backup.sql)
# ==============================================================================

$ErrorActionPreference = "Stop"

# Set working directory to the script's directory
Set-Location -Path $PSScriptRoot

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [Step 1/4] Loading Docker images from .tar files..." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$tarFiles = Get-ChildItem -Path $PSScriptRoot -Filter *.tar
if ($tarFiles.Count -eq 0) {
    Write-Error "No .tar image files found in $PSScriptRoot"
    exit 1
}

foreach ($file in $tarFiles) {
    Write-Host "Loading $($file.Name)..." -ForegroundColor Yellow
    docker load -i $file.FullName
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to load $($file.Name). Aborting deployment."
        exit 1
    }
}

Write-Host "`nAll Docker images loaded successfully!`n" -ForegroundColor Green

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [Step 2/4] Starting containers with docker compose..." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

docker compose up -d
if ($LASTEXITCODE -ne 0) {
    Write-Error "docker compose up -d failed. Aborting."
    exit 1
}

Write-Host "`nContainers created and starting!`n" -ForegroundColor Green

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [Step 3/4] Waiting for MySQL to become ready/healthy..." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$maxRetries = 30
$retry = 0
$mysqlHealthy = $false

while ($retry -lt $maxRetries) {
    # Check docker health status
    $healthStatus = (docker inspect --format='{{json .State.Health.Status}}' mysql 2>$null) -replace '"', ''
    
    if ($healthStatus -eq "healthy") {
        $mysqlHealthy = $true
        break
    }
    
    Write-Host "Waiting for MySQL healthcheck... ($($retry + 1)/$maxRetries) [Status: $healthStatus]" -ForegroundColor DarkGray
    Start-Sleep -Seconds 3
    $retry++
}

if (-not $mysqlHealthy) {
    # Direct ping check fallback
    Write-Host "Verifying MySQL connection directly..." -ForegroundColor DarkGray
    $ping = docker exec -i mysql mysqladmin ping -h localhost -u root -pjhabsjajsdjashdj 2>$null
    if ($ping -notmatch "alive") {
        Write-Error "MySQL is not ready yet. Cannot proceed with database restoration."
        exit 1
    }
}

Write-Host "`nMySQL is healthy and accepting connections!`n" -ForegroundColor Green

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [Step 4/4] Restoring database backup..." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$backupPath = Join-Path $PSScriptRoot "database-backup\backup.sql"

if (-not (Test-Path $backupPath)) {
    Write-Error "Backup file not found at: $backupPath"
    exit 1
}

Write-Host "Restoring $backupPath into database 'oomnieye_construction'..." -ForegroundColor Yellow

# In PowerShell, pipe the SQL file directly to docker exec
Get-Content -Raw $backupPath | docker exec -i mysql mysql -h localhost -u root -pjhabsjajsdjashdj oomnieye_construction

if ($LASTEXITCODE -ne 0) {
    Write-Error "Database restoration failed."
    exit 1
}

Write-Host "`nDatabase backup restored successfully!`n" -ForegroundColor Green

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Deployment Complete! Current Container Status:" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

docker compose ps
