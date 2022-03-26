@echo off

set HOME=%~dp0

set icon=%HOME%build\27.2\Emacs\share\emacs\27.2\etc\images\icons\hicolor\scalable\apps\emacs.ico
set bat=Emacs 27.2
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
for %%a in ("%dst%") do set "dstpar=%%~dpa"
if not exist "%dstpar%" mkdir "%dstpar%"
@call %HOME%src\common\create_shortcut "%src%" "%dst%" "%icon%"

set icon=%HOME%build\28.0.50-snapshot-2021-01-15\Emacs\share\icons\hicolor\scalable\apps\emacs.ico
set bat=Emacs 28.0.50-snapshot-2021-01-15
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
for %%a in ("%dst%") do set "dstpar=%%~dpa"
if not exist "%dstpar%" mkdir "%dstpar%"
@call %HOME%src\common\create_shortcut "%src%" "%dst%" "%icon%"

set icon=%HOME%build\28.0.91-snapshot-2022-02-12\Emacs\share\icons\hicolor\scalable\apps\emacs.ico
set bat=Emacs 28.0.91-snapshot-2022-02-12
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
for %%a in ("%dst%") do set "dstpar=%%~dpa"
if not exist "%dstpar%" mkdir "%dstpar%"
@call %HOME%src\common\create_shortcut "%src%" "%dst%" "%icon%"

set icon=%HOME%build\emacs-28.0.92\Emacs\share\icons\hicolor\scalable\apps\emacs.ico
set bat=emacs-28.0.92
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
for %%a in ("%dst%") do set "dstpar=%%~dpa"
if not exist "%dstpar%" mkdir "%dstpar%"
@call %HOME%src\common\create_shortcut "%src%" "%dst%" "%icon%"


pause
