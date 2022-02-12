@echo off
title Disable Parental Controls
SC start= disabled WpcMonSvc
echo Parental Control stopped successfully
pause
exit
