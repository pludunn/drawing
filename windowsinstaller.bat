@echo off
REM Install Drawing Pad on Windows. Requires Python 3 with Tcl/Tk and curl.exe.
setlocal
set "APP_DIR=%LOCALAPPDATA%\Drawing Pad"
set "REPO_URL=https://raw.githubusercontent.com/pludunn/drawing/main"
where py >nul 2>nul || (echo Install Python 3 from python.org first.& exit /b 1)
where curl >nul 2>nul || (echo curl.exe is required.& exit /b 1)
if not exist "%APP_DIR%" mkdir "%APP_DIR%"
curl.exe --fail --location "%REPO_URL%/main.py" --output "%APP_DIR%\main.py" || exit /b 1
>"%APP_DIR%\Drawing Pad.cmd" echo @echo off
>>"%APP_DIR%\Drawing Pad.cmd" echo py -3 "%APP_DIR%\main.py"
echo Drawing Pad installed. Run "%APP_DIR%\Drawing Pad.cmd".
