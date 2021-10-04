@echo off

set emacs_version=%1
set emacs_version=%emacs_version:"=%

rem Setting env variables
set HOME=%~dp0..\
set git_path=%HOME%Git
set git_bin=%git_path%\cmd
set git_usr_bin=%git_path%\usr\bin

set PATH=%git_bin%;%git_usr_bin%


rem Temporarily installing dependencies
@call "%HOME%src\temp_install_deps"

rem Running emacs
start "" "%HOME%%emacs_version%\Emacs\bin\runemacs.exe"
