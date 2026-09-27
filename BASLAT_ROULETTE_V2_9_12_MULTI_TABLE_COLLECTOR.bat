@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title Roulette Pro AI V2.9.12 Multi Table Collector

if not exist "%~dp0roulette_v1.py" goto NEED_EXTRACT
if not exist "%~dp0resolve_last_roulette.py" goto NEED_EXTRACT

set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" set "CHROME=%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"

if not defined CHROME (
  echo Google Chrome bulunamadi.
  pause
  exit /b 1
)

:START_ALL
set "LASTURL="
for /f "usebackq delims=" %%U in (`py -3.11 "%~dp0resolve_last_roulette.py"`) do if not "%%U"=="" set "LASTURL=%%U"

if defined LASTURL (
  echo [AUTO] Canli casino girisi aciliyor...
  start "" "%CHROME%" ^
    --remote-debugging-address=127.0.0.1 ^
    --remote-debugging-port=9222 ^
    --remote-allow-origins=* ^
    --user-data-dir="%LOCALAPPDATA%\PragmaticBlackjackChrome" ^
    --start-maximized ^
    "%LASTURL%"
) else (
  echo [AUTO] Ilk kez guvenli rulet adresi bulunamadi. Chrome aciliyor.
  echo [AUTO] Chrome baglantisi ve ogrenilen yol program tarafindan da kontrol edilir.
  start "" "%CHROME%" ^
    --remote-debugging-address=127.0.0.1 ^
    --remote-debugging-port=9222 ^
    --remote-allow-origins=* ^
    --user-data-dir="%LOCALAPPDATA%\PragmaticBlackjackChrome" ^
    --start-maximized
)

timeout /t 2 /nobreak >nul
py -3.11 "%~dp0roulette_v1.py"
set "RC=%ERRORLEVEL%"

if "%RC%"=="77" (
  echo.
  echo [AUTO RECOVER] Pragmatic yenileme uyarisi algilandi.
  echo [AUTO RECOVER] Dedicated Chrome kapatiliyor ve rulet yeniden aciliyor...
  powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "$p=Get-CimInstance Win32_Process -Filter \"Name='chrome.exe'\"; foreach($x in $p){ if($x.CommandLine -like '*PragmaticBlackjackChrome*'){ Stop-Process -Id $x.ProcessId -Force -ErrorAction SilentlyContinue } }" >nul 2>&1
  timeout /t 4 /nobreak >nul
  goto START_ALL
)

if not "%RC%"=="0" (
  echo Python 3.11 bulunamadi veya program hata ile kapandi. Kod: %RC%
  pause
)
endlocal & exit /b %RC%

:NEED_EXTRACT
echo.
echo ================================================================
echo   PROGRAM ZIP / RAR ICINDEN CALISTIRILAMAZ
echo ================================================================
echo.
echo WinRAR yalnizca BAT dosyasini gecici klasore cikarmis.
echo Bu nedenle roulette_v1.py ve resolve_last_roulette.py bulunamadi.
echo.
echo COZUM:
echo 1. ZIP dosyasina sag tikla.
echo 2. "Tumunu ayikla" veya "Klasore cikart" sec.
echo 3. Cikan klasoru ac.
echo 4. BASLAT_ROULETTE_V2_9_12_MULTI_TABLE_COLLECTOR.bat dosyasini calistir.
echo.
pause
endlocal
exit /b 2
