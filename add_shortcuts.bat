@echo off

set HOME=%~dp0

set icon=%HOME%27.2\Emacs\share\emacs\27.2\etc\images\icons\hicolor\scalable\apps\emacs.ico
set bat=Emacs 27.2 nodeps
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
for %%a in ("%dst%") do set "dstpar=%%~dpa"
if not exist "%dstpar%" mkdir "%dstpar%"
@call %HOME%src\common\create_shortcut "%src%" "%dst%" "%icon%"

set icon=%HOME%28.0.50-snapshot-2021-01-15\Emacs\share\icons\hicolor\scalable\apps\emacs.ico
set bat=Emacs 28.0.50-snapshot-2021-01-15 nodeps
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
for %%a in ("%dst%") do set "dstpar=%%~dpa"
if not exist "%dstpar%" mkdir "%dstpar%"
@call %HOME%src\common\create_shortcut "%src%" "%dst%" "%icon%"

pause
