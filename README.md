# Translucent Copilot — Release v1.0.0 (x64 & ARM64)

Official multi-format Windows distribution release for **Translucent Copilot** (Microsoft Store ID: `9PBMDFDBJ14F`, PFN: `RohitIndsutries.TranslucentCopilot_qa4b4tr0s02ze`).

---

## 📦 Package Distribution Files

### Windows 64-bit (x64 / AMD64)
| File Name | Format | Purpose | Size |
| :--- | :--- | :--- | :--- |
| **`Translucent-Copilot-v1.0.0-Setup-x64.exe`** | Setup Wizard | Standard graphical Windows installer with desktop & start menu shortcuts | 203.26 MB |
| **`Translucent-Copilot-v1.0.0-Standalone-x64.exe`** | Single Portable EXE | Standalone zero-installation executable. Click and run anywhere. | 152.17 MB |
| **`Translucent-Copilot-v1.0.0-Portable-x64.zip`** | Portable ZIP Bundle | Portable archive with Whisper AI speech model and trust certificate | 207.04 MB |
| **`Translucent-Copilot-v1.0.0-x64.msix`** | Signed MSIX Package | Direct Windows Modern App package (Authenticode signed with DigiCert timestamp) | 358.10 MB |
| **`Translucent-Copilot-v1.0.0-MSStore.msix`** | Microsoft Store MSIX | Official submission package for Microsoft Partner Center | 358.09 MB |

### Windows on ARM (ARM64 Snapdragon X / Surface Pro)
| File Name | Format | Purpose | Size |
| :--- | :--- | :--- | :--- |
| **`Translucent-Copilot-v1.0.0-Setup-ARM64.exe`** | Setup Wizard | Native ARM64 installer wizard optimized for Snapdragon X Elite / Plus | 134.37 MB |
| **`Translucent-Copilot-v1.0.0-Standalone-ARM64.exe`**| Single Portable EXE | Native ARM64 zero-installation single-file executable | 74.63 MB |
| **`Translucent-Copilot-v1.0.0-Portable-ARM64.zip`** | Portable ZIP Bundle | Native ARM64 archive with companion Whisper AI model | 136.00 MB |
| **`Translucent-Copilot-v1.0.0-ARM64.msix`** | Signed MSIX Package | Native ARM64 Windows Modern App package (Signed & timestamped) | 205.57 MB |
| **`Translucent-Copilot-v1.0.0-MSStore-ARM64.msix`** | Microsoft Store MSIX | Official ARM64 submission package for Microsoft Partner Center | 205.56 MB |

### Universal Automation & Verification
| File Name | Format | Purpose | Size |
| :--- | :--- | :--- | :--- |
| **`Install-TranslucentCopilot.ps1`** | PowerShell Script | 1-command auto-detecting remote installer (x64 / ARM64) | 1.8 KB |
| **`winget/`** | WinGet Manifests | Official Windows Package Manager YAML manifests | Small |
| **`SHA256-CHECKSUMS.txt`** | Integrity Hashes | Official cryptographic verification checksums | Small |

---

## ⚡ Installation Options

### 1. PowerShell One-Line Install (Auto-Detects Architecture)
```powershell
irm https://livecopilot.in/install.ps1 | iex
```

### 2. WinGet Windows Package Manager
```cmd
winget install RohitIndsutries.TranslucentCopilot
```

### 3. Microsoft Store
Open Microsoft Store and search for `Translucent Copilot` (Store ID: `9PBMDFDBJ14F`) or install via ms-windows-store link:
```
ms-windows-store://pdp/?productid=9PBMDFDBJ14F
```

---

## 🔒 Security & Code Signing
All executables and MSIX packages are digitally signed:
* **Publisher:** CN=553DB1FB-303D-4A71-8134-F23C9F4790EE (Rohit Indsutries)
* **Timestamp Authority:** DigiCert SHA-256 Trusted RFC 3161 Timestamp Responder
* **Validation:** Verified via Microsoft signtool.exe
