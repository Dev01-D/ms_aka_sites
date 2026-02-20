# 🛠️ IT Service Desk: Windows Troubleshooting Cheat Sheet

This resource contains high-impact shortcuts and commands for Windows troubleshooting. Use these to reduce "time-to-resolution" during remote sessions or on-site support.

---

## ⚡ Emergency Recovery
*Use these when the system is hanging, the screen is black, or the OS is unresponsive.*

| Shortcut | Action | Use Case |
| :--- | :--- | :--- |
| **Ctrl + Shift + Esc** | Open Task Manager | Kill unresponsive apps or restart `explorer.exe`. |
| **Win + Ctrl + Shift + B** | Restart Graphics Driver | Fixes black screens or frozen displays (you will hear a beep). |
| **Shift + Click "Restart"** | Advanced Startup | Boot into Safe Mode, WinRE, or Command Prompt. |
| **Ctrl + Alt + Del** | Security Screen | Force a logout or access Task Manager when the desktop is frozen. |
| **Win + X, U, U** | Fast Shutdown | Shuts down the PC immediately without using the mouse. |

---

## 🌐 Networking & Connectivity
*Quick access to adapter settings and diagnostic tools.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `ncpa.cpl` | Network Connections | Change IP settings, disable/enable adapters. |
| `inetcpl.cpl` | Internet Properties | Clear SSL state, manage proxy settings, or reset IE settings. |
| `mstsc` | Remote Desktop | Connect to a remote server or user machine. |
| `cmd /k ipconfig /flushdns` | DNS Flush | Resolve "Site can't be reached" errors immediately. |
| `cmd /k ping -t 8.8.8.8` | Continuous Ping | Check for intermittent packet loss or ISP drops. |

---

## ⚙️ System Configuration & Rights
*Tools for managing user accounts, software, and local policies.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `sysdm.cpl` | System Properties | Rename PC, change Domain, or edit Environment Variables. |
| `appwiz.cpl` | Programs & Features | Fastest way to uninstall software or check install dates. |
| `services.msc` | Services Manager | Restart Print Spooler, Windows Update, or third-party services. |
| `compmgmt.msc` | Computer Management | Access Disk Management & Local Users/Groups in one UI. |
| `gpupdate /force` | Group Policy Update | Force new IT policies to apply without requiring a logout. |
| `netplwiz` | User Accounts | Manage local admin rights or set up auto-logon. |

---

## 🔍 Hardware & Diagnostic Logs
*Investigating hardware failures, blue screens (BSOD), or software crashes.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `devmgmt.msc` | Device Manager | Check for driver errors or "Unknown Devices." |
| `eventvwr.msc` | Event Viewer | Check "Windows Logs > System" for critical error codes. |
| `msinfo32` | System Information | Check BIOS version, Secure Boot status, and serial numbers. |
| `resmon` | Resource Monitor | Identify which process is causing 100% Disk or CPU usage. |
| `dxdiag` | DirectX Diagnostic | Check GPU health and audio hardware details. |

---

## 🐚 PowerShell One-Liners (Diagnostic Power-User)
*Run these in an **Elevated PowerShell** window (Win + X, then A).*

| Task | Command | Result |
| :--- | :--- | :--- |
| **Battery Health** | `powercfg /batteryreport` | Generates an HTML report in `C:\Windows\System32` showing capacity loss over time. |
| **Get Serial Number** | `Get-CimInstance Win32_BIOS | Select-Object SerialNumber` | Pulls the Dell/HP/Lenovo service tag without flipping the laptop over. |
| **Check License Key** | `wmic path softwarelicensingservice get OA3xOriginalProductKey` | Displays the BIOS-embedded Windows 10/11 Product Key. |
| **Uptime** | `(get-date) - (gcim Win32_OperatingSystem).LastBootUpTime` | Shows exactly how long since the last *real* reboot (ignores "Fast Startup" hibernations). |
| **WiFi History** | `netsh wlan show profiles` | Lists all saved WiFi networks the device has connected to. |

---

## 🧹 Maintenance & Cleanup
*Commands to clear the "junk" that often slows down standard office PCs.*

### 1. Clear Browser Cache (All Browsers)
While there isn't a single "magic" command for all browsers, you can force-clear the most common ones by killing the process and deleting the local app data folders via a script, or use these shortcuts while the browser is open:
* **Ctrl + Shift + Delete**: Opens the "Clear Browsing Data" menu in Chrome, Edge, and Firefox.
* **Ctrl + F5**: Performs a "Hard Reload," bypassing the cache for the specific page you are on.

### 2. Disk & System File Repair
If a user reports "weird" glitches or icons disappearing:

| Command (Admin CMD/PS) | Action |
| :--- | :--- |
| `cleanmgr /sageset:1` | **Disk Cleanup:** Opens an expanded cleanup menu (including System Files). |
| `sfc /scannow` | **System File Checker:** Repairs corrupted Windows system files. |
| `dism /online /cleanup-image /restorehealth` | **DISM:** Fixes the Windows Image if SFC fails to find the source files. |

---

## ⌨️ Advanced Keyboard Navigation
*Teach these to technicians for navigating a user's PC when their mouse is broken or lagging.*

* **Win + V**: Opens **Clipboard History**. (Must be enabled first, but a lifesaver for repetitive data entry).
* **Win + Period (.)**: Opens the **Emoji/Symbol picker**. Great for finding arrows or special characters for documentation.
* **Alt + Space, then X**: Maximizes the current window.
* **Alt + Space, then M**: Move a window using arrow keys (essential when a window is "stuck" off-screen on a disconnected second monitor).
* **Ctrl + Win + Left/Right Arrow**: Switch between **Virtual Desktops**. Useful for keeping "Personal" and "IT Work" separate during a screen share.

---
---

## 🔑 Registry Fixes (The "Surgical" Tools)
*Access via `regedit` in the Run box. Always export a backup (`File > Export`) before editing.*

| Goal | Registry Path | Change |
| :--- | :--- | :--- |
| **Fix Stuck Outlook Profile** | `HKCU\Software\Microsoft\Office\16.0\Outlook\Profiles` | Delete the sub-folder of the corrupted profile to force a clean start. |
| **Disable "Sticky Keys" Popup** | `HKU\.Default\Control Panel\Accessibility\StickyKeys` | Set `Flags` to `506`. |
| **Find Windows Build Version** | `HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion` | Look at `DisplayVersion` (e.g., 22H2) and `CurrentBuild`. |
| **Clear Stuck Print Jobs** | `HKLM\SYSTEM\CurrentControlSet\Control\Print\Printers` | Locate the printer and clear the `Spooler` sub-keys (after stopping the service). |
| **Remove "Chat" from Taskbar** | `HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced` | Set `TaskbarMn` to `0`. |

---

## 🚀 Speed-Dial: Navigation Shortcuts
*Quickly jump to common folders via the **Run (Win + R)** box.*

* `%temp%` — Opens the current user's **Temporary Files** (safe to delete most of these).
* `shell:startup` — Opens the **Startup Folder** (add/remove apps that launch at login).
* `shell:downloads` — Direct jump to the user's Downloads.
* `\` — Opens the **C: Drive** root directory instantly.
* `..` — Opens the **User Profile** folder (C:\Users\Username).

---

## 🛡️ IT Safety & Documentation Standards

> [!IMPORTANT]
> **The Golden Rule of Registry Editing:**
> Never delete a key without right-clicking it and selecting **Export** first. If the system becomes unstable, you can double-click that `.reg` file to undo your changes.

### Essential Diagnostic Tools (Portable)
If the built-in Windows tools aren't enough, keep these in your `C:\IT_Tools` folder:
1. **TreeSize Free**: To find exactly what is eating up hard drive space.
2. **HWMonitor**: To check if a laptop is overheating (Thermal Throttling).
3. **CrystalDiskInfo**: To check the S.M.A.R.T. status of an SSD/HDD.
4. **BlueScreenView**: To parse `.dmp` files after a system crash.

---

## 📝 Ticket Documentation Template
*Copy this into your ticket notes to ensure consistent data collection.*

**Issue:** [User Description]
**Hostname:** [Output of `hostname`]
**Uptime:** [Days/Hours]
**Troubleshooting Steps Taken:**
- [ ] Cleared Temp Files / Browser Cache
- [ ] Ran `sfc /scannow`
- [ ] Restarted `explorer.exe`
- [ ] Checked Event Viewer for Error ID: [XXXX]
**Result:** [Resolved / Escalated to Tier 2]
---

## 💡 Service Desk "Pro Tips"

### 1. The "Copy Error" Trick
When a standard Windows error dialog box appears, don't take a screenshot. Simply press **Ctrl + C** while the window is active. It will copy the full text of the error to the clipboard, which can then be pasted into a ticket.

### 2. The "Elevated" Run Command
If you need to run any of the tools above as an Administrator from the **Win + R** box:
1. Type the command (e.g., `cmd` or `services.msc`).
2. Press **Ctrl + Shift + Enter**.

### 3. God Mode (All Settings Folder)
Create a new folder on the desktop and name it exactly this:  
`GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}`  
This creates a single icon that lists every single Windows setting in one searchable list.

---
*Maintained by the IT Service Desk Team.*


