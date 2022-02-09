@echo off
goto text
:text
cls
echo Text Editor 1.4
set /p N= document name: 
cls
set /p WRITE=Write:
echo %WRITE% > %N%.txt
goto text