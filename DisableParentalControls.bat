@echo off
title Disable Parental Controls
SC STOP WpcMonSvc
echo Parental Control stopped successfully
pause
exit
