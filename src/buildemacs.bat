:: To be run after setting the HOME variable
set emacs_version=%1
set emacs_version=%emacs_version:"=%

rem Setting env variables
set HOME=%~dp0..\
@call "%HOME%src\common\set_path_for_build"

rem Running emacs
start "" "%HOME%build\%emacs_version%\Emacs\bin\runemacs.exe"
