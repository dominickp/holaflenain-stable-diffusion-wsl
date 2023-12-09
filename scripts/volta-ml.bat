@echo off
setlocal enabledelayedexpansion

echo Launching Docker Desktop
timeout /t 3
"C:\Program Files\Docker\Docker\Docker Desktop.exe"
echo Launching Firefox 
"C:\Program Files\Mozilla Firefox\firefox.exe" -private-window http://localhost:9908/

:retry
dir C:\Users\Dom\Documents\GitHub\stable-diffusion-ui
docker-compose up volta-ml

echo.
echo Press any key to retry, or press Ctrl+C to exit.
pause >nul
goto :retry
