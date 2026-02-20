## 🔍 Hardware & Diagnostic Logs
*Investigating hardware failures, blue screens (BSOD), or software crashes.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `devmgmt.msc` | Device Manager | Check for driver errors or "Unknown Devices." |
| `eventvwr.msc` | Event Viewer | Check "Windows Logs > System" for critical error codes. |
| `msinfo32` | System Information | Check BIOS version, Secure Boot status, and serial numbers. |
| `resmon` | Resource Monitor | Identify which process is causing 100% Disk or CPU usage. |
| `dxdiag` | DirectX Diagnostic | Check GPU health and audio hardware details. |

## 🐚 PowerShell Diagnostic One-Liners
| Task | Command | Result |
| :--- | :--- | :--- |
| **Battery Health** | `powercfg /batteryreport` | Generates HTML report in `C:\Windows\System32`. |
| **Get Serial Number** | `Get-CimInstance Win32_BIOS | Select-Object SerialNumber` | Pulls service tag/serial without physical access. |
| **Uptime** | `(get-date) - (gcim Win32_OperatingSystem).LastBootUpTime` | Shows time since last *real* reboot. |

## 🛠️ Essential Third-Party Diagnostic Tools
*Keep these in your `C:\IT_Tools` folder for deep dives.*
1. **HWMonitor**: Check for CPU/GPU thermal throttling.
2. **CrystalDiskInfo**: Check S.M.A.R.T. health status of SSDs/HDDs.
3. **BlueScreenView**: Parse `.dmp` files to find offending drivers after a BSOD.
