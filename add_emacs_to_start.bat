@echo off

set HOME=%~dp0

set icon=%HOME%27.2\Emacs\share\emacs\27.2\etc\images\icons\hicolor\scalable\apps\emacs.ico
set bat=Emacs 27.2 nodeps
set src=%HOME%%bat%.bat
set dst=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Emacs\%bat%.lnk
@call %HOME%src\create_shortcut "%src%" "%dst%" "%icon%"

pause
