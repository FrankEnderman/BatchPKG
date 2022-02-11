@echo off
title ButterQuiz
type Splash.txt

echo Starting game...
cls
echo NEWGAMECREATED %date%, %time% >> LOGFL
goto 1
:1
set qip == 1
set /p opt1= when was the first laptop created?: 
echo 1. 1972
echo 2. 1980
echo 3. 1996
if %opt1% == 1972 goto right
echo RGHT %qip% >> LOGFL
:2
set qip == 2
set /p opt1= when was windows created?: 
echo 1. 1975
echo 2. 1980
echo 3. 1985
if %opt1% == 1985 goto right
echo RGHT %qip% >> LOGFL
:3
set qip == 3
set /p opt1= when was the mouse invented?: 
echo 1. 1970
echo 2. 1980
echo 3. 1986
if %opt1% == 1970 goto right
echo RGHT %qip% >> LOGFL
:4
set qip == 4
set /p opt1= when was IRC invented?: 
echo 1. 1988
echo 2. 1980
echo 3. 1977
if %opt1% == 1988 goto right
echo RGHT %qip% >> LOGFL
:right
echo you got it right!
pause

goto %qip%+1
