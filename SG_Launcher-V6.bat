@echo off
setlocal enabledelayedexpansion
title SG Multiplayer Launcher

:menu
cls
echo ==================================================
echo    SMOKIN' GUNS - AKTIVE SERVER (MANUELL)
echo ==================================================
echo.
echo Status-Check (Ping):
echo.

set "S1=212.129.56.80"
set "S2=178.24.71.206"
set "S3=92.101.127.48"
set "S4=161.97.89.117"
set "S5=162.19.66.146"
set "S6=82.66.34.87"

for %%i in (1 2 3 4 5 6) do (
    ping -n 1 -w 1500 !S%%i! >nul
    if !errorlevel! equ 0 (set "STAT%%i=[ ONLINE ]") else (set "STAT%%i=[TIMEOUT?]")
)

echo [1] gg.illwieckz.net (FR)      !STAT1!  IP: !S1!
echo [2] The SG Rezort (GER)       !STAT2!  IP: !S2!
echo [3] Wild West DM              !STAT3!  IP: !S3!
echo [4] Deanea's SG Server (GER)  !STAT4!  IP: !S4!
echo [5] smoking-guns.org (BR)     !STAT5!  IP: !S5!:27970
echo [6] smoking-guns.org (MX)     !STAT5!  IP: !S5!:27971
echo [7] SweetWater (Test)         !STAT5!  IP: !S5!:27974
echo [8] Sillingy Arena (FR)       !STAT6!  IP: !S6!
echo.
echo [R] Liste aktualisieren (Neu pingen)
echo [Q] Beenden
echo ==================================================
set /p wahl=Waehle (1-8) zum Verbinden: 

if "%wahl%"=="1" start "" "C:\Smokinguns\smokinguns.exe" +connect !S1!:27959
if "%wahl%"=="2" start "" "C:\Smokinguns\smokinguns.exe" +connect !S2!:27962
if "%wahl%"=="3" start "" "C:\Smokinguns\smokinguns.exe" +connect !S3!:27960
if "%wahl%"=="4" start "" "C:\Smokinguns\smokinguns.exe" +connect !S4!:27960
if "%wahl%"=="5" start "" "C:\Smokinguns\smokinguns.exe" +connect !S5!:27970
if "%wahl%"=="6" start "" "C:\Smokinguns\smokinguns.exe" +connect !S5!:27971
if "%wahl%"=="7" start "" "C:\Smokinguns\smokinguns.exe" +connect !S5!:27974
if "%wahl%"=="8" start "" "C:\Smokinguns\smokinguns.exe" +connect !S6!:27970
if /i "%wahl%"=="r" goto menu
if /i "%wahl%"=="q" exit
goto menu
