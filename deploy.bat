@echo off
title Omniwatch Deployment
cd /d "%~dp0"
echo Starting Omniwatch Deployment...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0deploy.ps1"
pause
