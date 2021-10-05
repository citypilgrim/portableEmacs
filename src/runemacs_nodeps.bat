:: To be run after setting the HOME variable
set emacs_version=%1
set emacs_version=%emacs_version:"=%

rem Setting env variables
set HOME=%~dp0..\
@call "%HOME%src\set_path"

rem Temporarily installing dependencies
@call "%HOME%src\temp_install_deps"

rem Running emacs
start "" "%HOME%%emacs_version%\Emacs\bin\runemacs.exe" --debug-init
