# 🚀 Microsoft aka.ms Power tools

![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Microsoft](https://img.shields.io/badge/Microsoft-365-blue?logo=microsoft)

A curated collection of `aka.ms` shortcuts to navigate Microsoft portals at lightning speed. Stop clicking through menus and start teleporting to the blades you need.

> [!TIP]
> For a comprehensive list and a browser extension, check out [cmd.ms](https://cmd.ms).

---

## 📑 Table of Contents
- [Azure Active Directory (Entra ID)](#-azure-active-directory-entra-id)
- [Microsoft Admin Portals](#-microsoft-admin-portals)
- [Microsoft Intune Portals](#-microsoft-intune-portals)
- [Microsoft 365 Defender](#%EF%B8%8F-microsoft-365-defender)
- [Microsoft Copilot & AI Services](#-microsoft-copilot--ai-services)
- [User Portals](#-user-portals)
- [Supercharge Your Search Bar](#-supercharge-your-search-bar)

---

## 🔐 Azure Active Directory (Entra ID)
*Use these by typing `aka.ms/ad/{command}`*

| Command | Portal Blade / Destination |
| :--- | :--- |
| `ca` | Conditional Access |
| `cawhatif` | Conditional Access What If |
| `pim` | Privileged Identity Management (PIM) |
| `users` | Users Management |
| `groups` | Groups Management |
| `devices` | Device Management |
| `apps` | Enterprise Applications |
| `appreg` | App Registrations |
| `auth` | Authentication Methods & Policies |
| `legacymfa` | Legacy MFA Settings |
| `guests` | Guest Access Settings |
| `logs` | Sign-in Logs |
| `xtap` | Cross-Tenant Access Settings |
| `roles` | Azure AD / Entra Roles |
| `sspr` | Password Reset Settings |
| `security` | Security Dashboard |
| `mfaunblock` | MFA Unblock User |
| `reviews` | Access Reviews |
| `score` | Secure Score |
| `license` | License Management |
| `synclog` | AAD Connect Sync Errors |
| `consent` | Consents and Permissions |

---

## 🏢 Microsoft Admin Portals

| Link | Destination |
| :--- | :--- |
| [aka.ms/admin](https://aka.ms/admin) | M365 Admin Portal |
| [aka.ms/azad](https://aka.ms/azad) | Azure AD (Entra) Portal |
| [aka.ms/ge](https://aka.ms/ge) | Graph Explorer |
| [aka.ms/intune](https://aka.ms/intune) | Microsoft Intune |
| [aka.ms/ppac](https://aka.ms/ppac) | Power Platform Admin Center |

---

## 📱 Microsoft Intune Portals

| Link | Destination |
| :--- | :--- |
| [aka.ms/in](https://aka.ms/in) | Intune Admin Center |
| [aka.ms/intuneshd](https://aka.ms/intuneshd) | Intune Service Health |
| [aka.ms/intunesupport](https://aka.ms/intunesupport) | Get Intune Support |
| [aka.ms/enrollmymac](https://aka.ms/enrollmymac) | Company Portal for macOS |

---

## 🛡️ Microsoft 365 Defender

| Link | Destination |
| :--- | :--- |
| [aka.ms/de](https://aka.ms/de) | Microsoft 365 Defender Home |
| [aka.ms/de/incidents](https://aka.ms/de/incidents) | Incidents |
| [aka.ms/de/hunting](https://aka.ms/de/hunting) | Advanced Hunting |
| [aka.ms/de/actions](https://aka.ms/de/actions) | Action Center |
| [aka.ms/de/explorer](https://aka.ms/de/explorer) | Threat Explorer |

---

## 🤖 Microsoft Copilot & AI Services
*Shortcuts for the AI era—from productivity to agent development.*

| Link | Destination |
| :--- | :--- |
| [aka.ms/ai](https://aka.ms/ai) | **Microsoft AI Hub** |
| [aka.ms/copilot](https://aka.ms/copilot) | **Microsoft Copilot** (Web Chat) |
| [aka.ms/m365copilot](https://aka.ms/m365copilot) | **M365 Copilot** (Admin & Setup) |
| [aka.ms/securitycopilot](https://aka.ms/securitycopilot) | **Security Copilot** |
| [aka.ms/copilotstudio](https://aka.ms/copilotstudio) | **Copilot Studio** (Build AI Agents) |
| [aka.ms/azureaifoundry](https://aka.ms/azureaifoundry) | **Azure AI Foundry** |
| [aka.ms/promptgallery](https://aka.ms/promptgallery) | **Copilot Prompt Gallery** |

---

## 👤 User Portals

| Link | Destination |
| :--- | :--- |
| [aka.ms/sspr](https://aka.ms/sspr) | Self Service Password Reset |
| [aka.ms/mysecurity](https://aka.ms/mysecurity) | Security Info / MFA Setup |
| [aka.ms/myapps](https://aka.ms/myapps) | My Apps Portal |
| [aka.ms/my-account](https://aka.ms/my-account) | My Account Settings |
| [aka.ms/my-groups](https://aka.ms/my-groups) | My Groups |
| [aka.ms/my-access](https://aka.ms/my-access) | My Access Packages |

---

## ⚡ Supercharge Your Search Bar

Stop typing `aka.ms/` every time. Set up a custom search engine keyword.

**How it works:** Open a new tab, type **`a`**, press **SPACE**, then type your shortcut (e.g., `intune`).

### 🌐 Microsoft Edge / Google Chrome
1. Go to **Settings** > **Search engine** > **Manage search engines**.
2. Under **Site search**, select **Add**.
3. Use:
   - **Search engine:** `aka.ms`
   - **Shortcut:** `a`
   - **URL:** `https://aka.ms/%s`

### 🦊 Firefox
1. Press `Ctrl+B` to open the Bookmarks Sidebar.
2. Right-click > **Add Bookmark**.
3. Use:
   - **Name:** `aka.ms`
   - **URL:** `https://aka.ms/%s`
   - **Keyword:** `a`

---

## 💻 PowerShell Integration *W.I.P*
Take these shortcuts to your terminal! - This is a work in progress, please use with caution!!! 

1. Download `MicrosoftShortcuts.ps1` from this repo.
2. Add this line to your PowerShell `$PROFILE`:
   `. C:\Path\To\MicrosoftShortcuts.ps1`
3. Now you can type `Go-Users` or `Show-MSMenu` directly in your terminal to launch portals instantly.

## 🤝 Contributing
Found a missing link? 
1. **Fork** the repo.
2. Add your shortcut to the table.
3. Submit a **Pull Request**.

---

## 👨‍💻 About Me
Hi! I'm **Dev01-D**. I built this repo to streamline my workflow as a Microsoft Admin. I'm passionate about automation and making technical tools accessible.

* 🔭 I’m currently working on improving M365 workflows.
* 💬 Ask me about: Azure AD, Intune, or Cloud Security.
* ⭐️ Star this repo if it helped you!

---

## 📜 License
This project is licensed under the **MIT License**. Feel free to use and share!
