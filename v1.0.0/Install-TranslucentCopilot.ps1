# ==============================================================================
# Translucent Copilot - Stealth AI Desktop Copilot for Windows
# Official 1-Command PowerShell Remote Installer (v1.0.0)
#
# Usage:
#   irm https://livecopilot.in/install.ps1 | iex
# ==============================================================================

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}
$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host " ====================================================================" -ForegroundColor Cyan
Write-Host "       TRANSLUCENT COPILOT - WINDOWS 1-COMMAND QUICK INSTALLER        " -ForegroundColor Cyan
Write-Host " ====================================================================" -ForegroundColor Cyan
Write-Host "  Stealth Real-Time AI Meeting & Voice Interview Prep Assistant      " -ForegroundColor Gray
Write-Host ""

$destDir = Join-Path $env:LOCALAPPDATA "Programs\Translucent Copilot"
if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }

$setupUrl = "https://livecopilot.in/downloads/Translucent-Copilot-v1.0.0-Setup-x64.exe"
$tempSetup = Join-Path $env:TEMP "Translucent-Copilot-Setup.exe"

Write-Host "[*] Downloading Translucent Copilot v1.0.0..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $setupUrl -OutFile $tempSetup -UseBasicParsing

Write-Host "[*] Launching Installation Wizard..." -ForegroundColor Green
Start-Process -FilePath $tempSetup -ArgumentList "/SILENT" -Wait

Remove-Item $tempSetup -Force -ErrorAction SilentlyContinue
Write-Host "[OK] Installation completed successfully!" -ForegroundColor Green
