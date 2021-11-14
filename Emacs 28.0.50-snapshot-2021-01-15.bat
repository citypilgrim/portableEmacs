@echo off

set emacs_version=28.0.50-snapshot-2021-01-15

set src_dir=%~dp0src
@call "%src_dir%"\runemacs_nodeps.bat %emacs_version%
