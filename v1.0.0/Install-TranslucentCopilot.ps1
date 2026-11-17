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

# Detect processor hardware architecture (ARM64 vs x64)
$isArm64 = ($env:PROCESSOR_ARCHITECTURE -eq "ARM64") -or 
           ($env:PROCESSOR_ARCHITEW6432 -eq "ARM64") -or 
           ([System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture -eq [System.Runtime.InteropServices.Architecture]::Arm64)

if ($isArm64) {
    Write-Host "  [*] Detected Architecture: Windows on ARM (ARM64 / Copilot+ PC)" -ForegroundColor Cyan
    $setupUrl = "https://livecopilot.in/downloads/Translucent-Copilot-v1.0.0-Setup-ARM64.exe"
} else {
    Write-Host "  [*] Detected Architecture: Windows 64-bit (x64 / AMD64)" -ForegroundColor Cyan
    $setupUrl = "https://livecopilot.in/downloads/Translucent-Copilot-v1.0.0-Setup-x64.exe"
}

$destDir = Join-Path $env:LOCALAPPDATA "Programs\Translucent Copilot"
if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }

$tempSetup = Join-Path $env:TEMP "Translucent-Copilot-Setup.exe"

Write-Host "[*] Downloading Translucent Copilot v1.0.0 from $setupUrl..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $setupUrl -OutFile $tempSetup -UseBasicParsing

Write-Host "[*] Launching Installation Wizard..." -ForegroundColor Green
Start-Process -FilePath $tempSetup -ArgumentList "/SILENT" -Wait

Remove-Item $tempSetup -Force -ErrorAction SilentlyContinue
Write-Host "[OK] Translucent Copilot installation completed successfully!" -ForegroundColor Green
