:: To be run after setting HOME
:: To be run after install dependencies
set emacs_version=%1
set emacs_version=%emacs_version:"=%

set HOME=%~dp0..\

rem Setting env variables
@call "%HOME%src\common\set_path"


rem Running emacs
start "" "%HOME%build\%emacs_version%\Emacs\bin\runemacs.exe" --debug-init
