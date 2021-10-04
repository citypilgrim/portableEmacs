@echo off

set font_dir=%~dpdpdp0resources\fonts
for /F "delims=;" %%a in ('dir %font_dir% /B /A-D-H-S /S') do fontview %%a
