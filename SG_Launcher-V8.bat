@echo off
setlocal enabledelayedexpansion
title SG Multiplayer Launcher

:menu
cls
echo ==================================================
echo    SMOKIN' GUNS - AKTIVE SERVER (PORT-CHECK)
echo ==================================================
echo.
echo Status-Check (UDP-Port)... Bitte warten...
echo.

set "S1=82.165.163.95"  & set "P1=27961"
set "S2=212.129.56.80"  & set "P2=27959"
set "S3=178.24.71.206"  & set "P3=27962"
set "S4=92.101.127.48"  & set "P4=27960"
set "S5=161.97.89.117"  & set "P5=27960"
set "S6=162.19.66.146"  & set "P6=27970"
set "S7=162.19.66.146"  & set "P7=27971"
set "S8=162.19.66.146"  & set "P8=27974"
set "S9=82.66.34.87"    & set "P9=27970"

for %%i in (1 2 3 4 5 6 7 8 9) do (
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& { $u=New-Object System.Net.Sockets.UdpClient; $u.Client.ReceiveTimeout=1200; try { $u.Connect($args[0], [int]$args[1]); [byte[]]$b=255,255,255,255,103,101,116,115,116,97,116,117,115,10; [void]$u.Send($b, $b.Length); [void]$u.Receive([ref](New-Object System.Net.IPEndPoint([System.Net.IPAddress]::Any, 0))); exit 0 } catch { exit 1 } finally { $u.Close() } }" "!S%%i!" "!P%%i!"
    
    if !errorlevel! equ 0 (set "STAT%%i=[ ONLINE ]") else (set "STAT%%i=[OFFLINE ]")
)

echo.
echo [1] Ballerbude Reloaded       !STAT1!  IP: !S1!:!P1!
echo [2] gg.illwieckz.net (FR)     !STAT2!  IP: !S2!:!P2!
echo [3] The SG Rezort (GER)       !STAT3!  IP: !S3!:!P3!
echo [4] Wild West DM              !STAT4!  IP: !S4!:!P4!
echo [5] Deanea's SG Server (GER)  !STAT5!  IP: !S5!:!P5!
echo [6] smoking-guns.org (BR)     !STAT6!  IP: !S6!:!P6!
echo [7] smoking-guns.org (MX)     !STAT7!  IP: !S7!:!P7!
echo [8] SweetWater (Test)         !STAT8!  IP: !S8!:!P8!
echo [9] Sillingy Arena (FR)       !STAT9!  IP: !S9!:!P9!
echo.
echo [R] Liste aktualisieren (Neu pruefen)
echo [Q] Beenden
echo ==================================================
set /p wahl=Waehle (1-9) zum Verbinden: 

if "%wahl%"=="1" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S1!:!P1!
if "%wahl%"=="2" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S2!:!P2!
if "%wahl%"=="3" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S3!:!P3!
if "%wahl%"=="4" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S4!:!P4!
if "%wahl%"=="5" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S5!:!P5!
if "%wahl%"=="6" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S6!:!P6!
if "%wahl%"=="7" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S7!:!P7!
if "%wahl%"=="8" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S8!:!P8!
if "%wahl%"=="9" start "" "D:\Game\Smokin' Guns_Beta\smokinguns.exe" +connect !S9!:!P9!
if /i "%wahl%"=="r" goto menu
if /i "%wahl%"=="q" exit
goto menu