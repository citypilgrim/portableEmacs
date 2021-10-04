:: Compilation script to contain all dependency install lations
@echo off

set deps_dir=%~dp0deps

@call "%deps_dir%"\temp_install_fonts.bat
