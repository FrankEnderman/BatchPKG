@echo off
color 0a 
title NUKES EVERYWHERE!!!
set score == 0
goto start

:start
cls
echo 1.LAUNCH A NUKE 2.STAY CALM 3.KILL UR ENEMIES 4.S*icide 5.exit 6.PANIC AND DO NOTHING :(
echo score: %score%
set /p input= SELECT FAST!:
if %input% == 1 goto launch
if %input% == 2 goto calm
if %input% == 3 goto enemy_kill
if %input% == 4 goto ded
if %input% == 5 goto exit
if %input% == 6 goto panic
:launch
cls
echo you killed the whole world (you incl.) :(
SET /A score = %score% - 1
pause 
goto start
:calm
cls
echo although everybody is ded, you survived! :) but no mcdonalds and no Internet :(
echo score: 50-ish
SET /A score = %score% + 1
pause
goto start

:enemy_kill
cls
echo oh! you killed your enemies and you won! although your casualties were %random%
SET /A score = %score% + 1
pause
goto start
:ded
cls
echo You Died! 
SET /A score = %score% - 2
pause
goto start
:exit
echo %score% > score.txt
exit
:panic
cls
echo you lost. ded: %random%%random%
pause
goto start
