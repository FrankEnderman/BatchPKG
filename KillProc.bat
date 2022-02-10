@echo off
title TaskProc
set /p proc= task to kill:
taskkill /IM %proc%.exe /f
pause
exit