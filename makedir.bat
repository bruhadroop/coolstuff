@echo off
echo ~ directory creation, made easy ~
echo ---------------------------------
echo Run this file at the location you want to create your root directory
set cur=%cd%
echo Currently running at %cur%
echo.

:start
set /p name=Root Directory Name:
if "%name%"=="" goto fail
md %name%
cd %name%
md WEB-INF
cd WEB-INF
md classes
md lib
echo Directory %name% created!
goto end
:fail
echo No directory name entered
goto start
:end
pause