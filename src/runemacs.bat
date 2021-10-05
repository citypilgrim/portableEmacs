:: To be run after setting HOME
:: To be run after install dependencies
set emacs_version=%1
set emacs_version=%emacs_version:"=%

rem Setting env variables
@call "%HOME%src\set_path"

rem Running emacs
start "" "%HOME%%emacs_version%\Emacs\bin\runemacs.exe" --debug-init
