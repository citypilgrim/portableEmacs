@echo off

set emacs_version=27.2

set src_dir=%~dp0src
@call "%src_dir%"\runemacs_nodeps.bat %emacs_version%
