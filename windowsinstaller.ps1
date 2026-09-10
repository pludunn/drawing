# Install Drawing Pad on Windows. Run from PowerShell: .\windowsinstaller.ps1
$ErrorActionPreference = 'Stop'
$appDir = Join-Path $env:LOCALAPPDATA 'Drawing Pad'
$repoUrl = 'https://raw.githubusercontent.com/pludunn/drawing/main'
if (-not (Get-Command py -ErrorAction SilentlyContinue)) { throw 'Install Python 3 from python.org first.' }
New-Item -ItemType Directory -Force -Path $appDir | Out-Null
Invoke-WebRequest "$repoUrl/main.py" -OutFile (Join-Path $appDir 'main.py')
'@echo off' + "`r`n" + "py -3 `"$appDir\main.py`"" | Set-Content (Join-Path $appDir 'Drawing Pad.cmd') -Encoding ASCII
Write-Host "Drawing Pad installed. Run $(Join-Path $appDir 'Drawing Pad.cmd')."
