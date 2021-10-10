:: To be run after setting the HOME variable

:: Notes
:: 1. msys64 has to be placed with precendence so that org-roam can access the dependencies for msys-2.0.dll properly

set PATH=
set PATH=%PATH%;C:\Program Files\Common Files\Oracle\Java\javapath
set PATH=%PATH%;C:\msys64\usr\bin
set PATH=%PATH%;%HOME%Git\cmd
set PATH=%PATH%;%HOME%Git\usr\bin
set PATH=%PATH%;%SystemRoot%\System32
set PATH=%PATH%;%SystemRoot%
set PATH=%PATH%;%SystemRoot%\System32\Wbem
set PATH=%PATH%;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\
set PATH=%PATH%;%SYSTEMROOT%\System32\OpenSSH\
