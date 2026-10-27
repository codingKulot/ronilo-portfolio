@echo off
title Ronilo Portfolio - Local Preview
cd /d "%~dp0"
set PORT=5500
echo.
echo  Ronilo Portfolio - local preview
echo  ---------------------------------
echo  Address: http://localhost:%PORT%
echo  Keep this window open while you work. Close it to stop the preview.
echo.

where bun >/dev/null 2>nul
if %errorlevel%==0 (
  echo  Starting with auto-refresh: the page reloads every time you save a file.
  echo.
  bunx live-server --port=%PORT% --no-css-inject
  goto :end
)
if exist "%USERPROFILE%\.bun\bin\bun.exe" (
  echo  Starting with auto-refresh: the page reloads every time you save a file.
  echo.
  "%USERPROFILE%\.bun\bin\bun.exe" x live-server --port=%PORT% --no-css-inject
  goto :end
)
where npx >/dev/null 2>nul
if %errorlevel%==0 (
  echo  Starting with auto-refresh: the page reloads every time you save a file.
  echo.
  npx --yes live-server --port=%PORT% --no-css-inject
  goto :end
)
where python >/dev/null 2>nul
if %errorlevel%==0 (
  echo  Starting a simple server. Press F5 in the browser after saving a change.
  echo.
  start "" http://localhost:%PORT%
  python -m http.server %PORT%
  goto :end
)
where py >/dev/null 2>nul
if %errorlevel%==0 (
  echo  Starting a simple server. Press F5 in the browser after saving a change.
  echo.
  start "" http://localhost:%PORT%
  py -m http.server %PORT%
  goto :end
)
echo  Could not find Bun, Node.js or Python on this computer.
echo  Install Node.js from https://nodejs.org (LTS), then double-click this file again.
echo  Or open this folder in VS Code and use the "Live Server" extension.

:end
echo.
pause
