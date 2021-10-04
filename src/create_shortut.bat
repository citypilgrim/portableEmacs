@echo off
:: This program creates a shortcut for %1 at the location %2.
:: Other specifications include
:: %3 icon location

set temp_file="%TEMP%\create_shortcut-%RANDOM%.vbs"

set exe_path=%1
set exe_path=%exe_path:"=%

set short_path=%2
set short_path=%short_path:"=%
for %%a in ("%exe_path%") do set work_dir=%%~dpa

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %temp_file%
echo sLinkFile = "%short_path%" >> %temp_file%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %temp_file%
echo oLink.TargetPath = "%exe_path%" >> %temp_file%
echo oLink.WorkingDirectory = "%work_dir%" >> %temp_file%

set icon_path=%3
set icon_path=%icon_path:"=%
if not "%icon_path%"=="" (
   echo oLink.IconLocation = "%icon_path%" >> %temp_file%
)


:: Saving and executing
echo oLink.Save >> %temp_file%
cscript /nologo %temp_file%
del %temp_file%
