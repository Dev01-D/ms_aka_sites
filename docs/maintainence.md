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
