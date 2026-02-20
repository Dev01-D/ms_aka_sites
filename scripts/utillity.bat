@echo off
title CMD Utility (C) Dev01-D v1.2
:: Optimized for GitHub Repo: microsoft-service-desk-toolkit

:start
cls
mode 60,45
color 0f
setlocal enabledelayedexpansion

:: FIX: Get Clean Display Name (removes trailing dots/special chars from net user output)
for /f "tokens=2*" %%a in ('net user "%Username%" /domain 2^>nul ^| find /i "Full Name"') do (
    set "RawName=%%b"
    set "DisplayName=!RawName:.=!"
)
if "%DisplayName%"=="" set DisplayName=%Username%

echo ================================================
echo   WELCOME %DisplayName% TO THE CMD UTILITY!
echo ================================================
echo NETWORKING:            SYSTEM INFO:
echo 1) Ipconfig            7)  Who am I
echo 2) Reset Network       8)  Uptime 
echo 3) Ping Address        9)  PC Info
echo 4) Trace Route         10) Performance Check
echo 5) NetStat             11) Disk Check
echo 6) Get Mac (ARP)       12) Driver Check (CSV)
echo.
echo WINDOWS TOOLS:         CLEANUP:
echo 15) Clear Temp/Bin     20) Remove Battery Log
echo 16) Defrag Drive       21) Remove Driver Log
echo 17) Task Manager       
echo 18) Battery Report     22) EXIT
echo 19) Outlook Backup (PST)
echo ================================================
set /p option=Select Option [1-22]: 

if "%option%"=="1" goto ipconfig
if "%option%"=="2" goto Network
if "%option%"=="3" goto ping
if "%option%"=="18" goto Power
if "%option%"=="19" goto pst
if "%option%"=="22" goto exit_confirm
:: ... (Add other mappings here)

:: --- SUB-ROUTINES ---

:pst
cls
color 0a
echo [OUTLOOK PST BACKUP]
echo Ensure your backup USB drive is mapped to letter P:
pause
if not exist P:\ (
    color 0c
    echo ERROR: Drive P: not found. Please map your USB to P:
    pause
    goto start
)
echo Backing up PST/OST files to P:\Backup...
:: Added /R:1 /W:1 to prevent script hanging on open files
robocopy "%LocalAppData%\Microsoft\Outlook" "P:\Backup" *.pst *.ost /mir /R:1 /W:1
echo.
echo Backup Complete!
pause
goto start

:exit_confirm
set /p input=Type 'ok' to exit or 'c' to cancel: 
if /i "%input%"=="ok" exit
goto start
