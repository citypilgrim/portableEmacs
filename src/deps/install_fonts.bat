@echo off

set font_dir=%~dpdpdp0resource\fonts
for /F "delims=;" %%a in ('dir %font_dir% /B /A-D-H-S /S') do (
    copy "%%a" "%WINDIR%\Fonts"
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d %%~nxa /f
)
