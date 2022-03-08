@echo off
title Lemon Squeezers Journal
goto content
:content
cls
curl https://raw.githubusercontent.com/LemonSqueezers/LemonSqueezers/main/NEWS.md
echo.
echo.
echo Press any key to reload
pause
goto content