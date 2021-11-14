@echo off

set /p emacs_version=Enter Emacs version:

set src_dir=%~dp0src
@call "%src_dir%"\runemacs_nodeps.bat %emacs_version%
