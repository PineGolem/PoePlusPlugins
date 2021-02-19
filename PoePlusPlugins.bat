
@echo off

Rem these 4 lines read in the location of path of exile from settings.txt
set "pathvar="
set "appvar="
for /F "delims=" %%i in (settings.txt) do if not defined pathvar set "pathvar=%%i"
for /F "skip=1 delims=" %%i in (settings.txt) do if not defined appvar set "appvar=%%i"

Rem these 3 lines, go to the path of exile folder, launch it, and return to this folder
PUSHD  %pathvar%
start %appvar%
POPD

Rem this line launches all the files in the plugins folder
for /f "delims=" %%a IN ('dir /b /s .\"Plugin Shortcuts To Launch"\*') do start "%%~nxa" "%%a"
