# Translucent Copilot — Release v1.0.0

Official multi-format Windows distribution release for **Translucent Copilot** (Microsoft Store ID: 9PBMDFDBJ14F, PFN: RohitIndsutries.TranslucentCopilot_qa4b4tr0s02ze).

---

## 📦 Package Distribution Files

| File Name | Format | Purpose | Size |
| :--- | :--- | :--- | :--- |
| **Translucent-Copilot-v1.0.0-Setup-x64.exe** | Setup Wizard | Standard graphical Windows installer with desktop & start menu shortcuts | 203.3 MB |
| **Translucent-Copilot-v1.0.0-Standalone-x64.exe** | Single Portable EXE | Standalone zero-installation executable. Click and run anywhere. | 152.2 MB |
| **Translucent-Copilot-v1.0.0-Portable-x64.zip** | Portable ZIP Bundle | Portable archive with Whisper AI speech model and trust certificate | 207 MB |
| **Translucent-Copilot-v1.0.0-x64.msix** | Signed MSIX Package | Direct Windows Modern App package (Authenticode signed with Digicert timestamp) | 358.1 MB |
| **Translucent-Copilot-v1.0.0-MSStore.msix** | Microsoft Store MSIX | Official submission package for Microsoft Partner Center | 358.1 MB |
| **Install-TranslucentCopilot.ps1** | PowerShell Script | 1-command remote automated installer | Small |
| **winget/** | WinGet Manifests | Official Windows Package Manager YAML specifications for winget-pkgs | Small |
| **SHA256-CHECKSUMS.txt** | Integrity Hashes | Official cryptographic verification checksums | Small |

---

## ⚡ Installation Options

### 1. PowerShell One-Line Install
`powershell
irm https://livecopilot.in/install.ps1 | iex
`

### 2. WinGet Windows Package Manager
`cmd
winget install RohitIndsutries.TranslucentCopilot
`

### 3. Microsoft Store
Open Microsoft Store and search for Translucent Copilot (Store ID: 9PBMDFDBJ14F) or install via ms-windows-store link:
`
ms-windows-store://pdp/?productid=9PBMDFDBJ14F
`

---

## 🔒 Security & Code Signing
All executables and MSIX packages are digitally signed:
* **Publisher:** CN=553DB1FB-303D-4A71-8134-F23C9F4790EE (Rohit Indsutries)
* **Timestamp Authority:** DigiCert SHA-256 Trusted RFC 3161 Timestamp Responder
* **Validation:** Verified via Microsoft signtool.exe
