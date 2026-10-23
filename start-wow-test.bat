@echo off
title Guild Hall (two-game test)
cd /d "%~dp0"

rem Local test of Throne and Liberty + World of Warcraft in one server. Data goes to the test-data folder only.
set MEMBER_PASSCODE=guild
set OFFICER_PASSCODE=officer
set PORT=3000
set DATA_DIR=%~dp0test-data\shared
set GAMES_FILE=%~dp0games.demo.json

where node >nul 2>nul
if errorlevel 1 (
  echo  Node.js is not installed. Install the LTS version from https://nodejs.org/en/download and run this again.
  start https://nodejs.org/en/download
  pause
  exit /b 1
)
echo.
echo  Throne and Liberty:  http://localhost:%PORT%/      (also /tl/)
echo  World of Warcraft:   http://localhost:%PORT%/wow/
echo  Sign in with any name. Passcode "officer" = officer tools, "guild" = normal member.
echo  To reset the test, delete the test-data folder. Close this window to stop it.
echo.
start "" cmd /c "timeout /t 2 /nobreak >nul & start http://localhost:%PORT%/wow/"
node server.js
pause
