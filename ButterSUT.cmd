
:: © Interstar Corp. 
:: all changes made must include this license.
:: This software is licensed under GPL 3.0.
:: Please report a vulnerability, bug or feature at the github page.
:: contact me at buttertheidiot@gmail.com.
:: - Frank, Developer/owner
:: turns echo off (hides the code)
set ver= Release 22.04
 @echo off
 :: sets color to white
color 17
:: sets title
title Butter SUT %ver%
:: adds startup info to Record.TLF

:startup
:: clears messages on startup
cls
:: PC Info
echo Time: %time%
timeout /T 1 /NOBREAK >nul
echo PC Name: %username%
echo Cores in CPU: %NUMBER_OF_PROCESSORS%
:: Pre Startup Inspection (PSI)
timeout /T 1 /NOBREAK >nul

if exist Record.TLF echo [ OK ] LOGGING
if not exist Record.TLF echo [ ERROR ] LOGGING
timeout /T 1 /NOBREAK >nul
echo [ OK ] USER SESSION
timeout /T 1 /NOBREAK >nul
if not exist REGFILE.LOG echo [ ERROR ] REGISTER FILES
if exist REGFILE.LOG echo [ OK ] REGISTER FILES
timeout /T 1 /NOBREAK >nul
if %OS% == "WINDOWS_NT" echo [ OK ] OS
timeout /T 1 /NOBREAK >nul
echo [ OK ] VER: %ver%

if exist Record.TLF echo [ OK ] LOG FILE
timeout /T 1 /NOBREAK >nul
if exist CRASH-%name%.DUMP echo [ TRUE ] CRASH DUMP
if not exist CRASH-%name%.DUMP echo [ FALSE ] CRASH DUMP
timeout /T 1 /NOBREAK >nul
echo 1. Yes (Setup)
echo 2. No (Continue)
set /p FRUN= first run?:
if %FRUN% == 2 goto continue
if %FRUN% == 1 goto setup
:setup
echo Welcome to ButterSUT!
echo INSTALLED(%date%, %time%) >> Record.TLF
pause
goto continue
:continue
cls


echo .startup.%random%.%time%(%date%) {version: %ver%} >> Record.TLF
:: just some startup animation
color 06
echo                             ^})=-`                        
echo                             =GMWa}.                       
echo                             'yqWqm:                       
echo                 `."=^*r)))r*=LP3myxxxxx\r*=:-`            
echo             ':*]VzjojzzjooookoojjzoXoozzzjXojVLr!.        
echo          -*}zXXjojzzoXXooXowkooXXzkooXoojzzzjoooXoc):`    
echo        ,xwjoooojkwzooooXXjwwooooXowkoooooXXjwwjXjooXj}~`  
echo      -\koooooozwzoXoooXXjwwzXooooXzwzXoXoooookwkzooojjjl! 
echo     !VooXoXjkwzzjoooooXokwwjXoooooowwjXooooooXjzwwzoXooXzx
 echo  `^wXXXXozwwzjaaoojooXzwwzoooooooXkwwoooooozIPmjzwzXXojjj
echo  `rooooXokwkjq#@@@B9oXzwwwjoooooooXzwwzXXzK$#@@@Bezwzooooo
echo  =zojoXjwwzzX#@@@@@@BHkwkwjoooooooXzwwwjh$@@@@@@@gowwkjooo
echo .uooXXowwkXXM@@@@@@@@@dwwkXXoooojoXowwwP#@@@@@@@@#IzwwwoXo
echo ~oozXXzwwzXXd@@@@@@@@@@RwzXoooosjXIozwz#@@@@@@@@@#UozwwzXj
echo vzooojwwzXoo5@@@@BQ0OdZWzzjXjH#@QUjXzwIZbdE$Q#@@@#jXokwwjj
echo }ooXojwwzXoozDOmzjjoXzwwwoojZ@@@@#3ozwwwXXojoooH0djXXzwwjo
echo TXjojjwwjXoooXojojjjokwwwooM@@@@@@#mzwwkoXojjjooXoooXzwwoX
echo ijjoookwjXXXooXooooookwwwXoPE0$0009UzwwkXXooojooooooozwkoj
echo *joIojzwkXojjjzm9WoookwwwXoooooooooojwwzoXjjzZZIzojjozwkoo
echo ,yoooojwkXodQB#@@gObWmIzwzzzjooooojzkywIKHMd6Q@@#B8GzzwoXX
echo  ^zzoXXjwwojUWM#@@@@@@@@@@@@#######@@@@@@@@@@@@8qHXokwoXoo
echo  `?zoXoXzykjoojIR#@@@@@@@@@@@@@@@@@@@@@@@@@@@BMjoookyzXXoX
echo   `)zooXojkjXooXXoq0B#@@@@#dd6B@QOdR@@@@@#Q6KzoooXjwjooooo
echo    `=VXoXojkzjoooXojoX3MdDZzozdQWojo9RO5hjjjoooXozzoooooj}
echo     .ryXojXjzjoojjjooXzwkoojoooXojowkooooojjjjjkzoXooju~`
echo        `!xwoozzjoooooooXzkooooooooozwXoooXooXjzzIXoXVr_   
echo           .=vVoozjjoooooXkkXoooojjjkzXooXXXojjjjzTr:`     
 echo             `_~)iVzXooXojkjoooojjjkoooojzjkux*!-`        
 echo                  `.:=^r\xxL}TlulT}L]x?*~:_'   

:: cd C:\users\%username%\ 
timeout /T 2 /NOBREAK >nul
echo finding kernel.......
timeout /T 1 /NOBREAK >nul
echo starting Butter SUT ... 
timeout /T 1 /NOBREAK >nul
echo Loading.........
timeout /T 1 /NOBREAK >nul
:: Record startup complete event
echo .startupComplete(%time%) >> Record.TLF
:: login (no password inc.)
echo enter your account name
cls 
echo type your username
set/p name= enter name:
echo.
echo.
echo Welcome %name% it is %time% %date%
echo.
echo .LOGON_SUCCESS(1) [%name%].%time% >> Record.TLF
:: waits for user input
echo .WaitingUserInput(%time%) >> Record.TLF
pause
echo .UserPerms(%time%) >> Record.TLF
cls
:menu
cls
color 08
:: Record menu entry
echo .MenuShown(%time%) >> Record.TLF
:: main menu
:: shows current time/date
echo %ver%
echo.
ECHO current time: %time%
echo date: %date%
echo username: %name% 
echo.
echo Type the number for a process
echo.
:: shows options
echo 1.CURL
echo 2.Useful tools menu 
echo 3.Dates menu 
echo 4.Change text color to green 
echo 5.Find System
echo 6.Troubleshoot Internet Connection
echo 7.Exit
echo 8.Antivirus
echo 9.calculator
echo.

:: control points
echo.
set /p MenuSel= choose:
if %MenuSel% == 1 goto CURL
if %MenuSel% == 2 goto menu2
if %MenuSel% == 3 goto datesMenu
if %MenuSel% == 4 goto textColor
if %MenuSel% == 5 goto findFile
if %MenuSel% == 6 goto enterDNS
if %MenuSel% == 7 goto exit
if %MenuSel% == 9 goto calc
if %MenuSel% == 8 goto MAIN
:accessories
:: accessories (it has a bug. trying to solve)
echo .AccessoryOpened (%time%) >> Record.TLF 
cls
echo What Would You Like To Do? Type the number
echo.
echo 1.change text color
echo 2.controls
echo 3.System Info
echo 4.useful tools
echo 5.games
echo 6.admin tools (DANGER)
echo 7.SUT info 
echo.
set AccessorySel= option:
if %AccessorySel% == 1 goto textColor
if %AccessorySel% == 2 goto controls
if %AccessorySel% == 3 goto info
if %AccessorySel% == 4 goto menu2
if %AccessorySel% == 5 goto gamesMenu
if %AccessorySel% == 6 goto adminTools
if %AccessorySel% == 7 goto SUTInfo
:clock 
cls
ECHO it is %time%. 
pause 
goto menu
:cal
cls 
echo %date% : %time%
pause
goto menu
:calc
cls
title Calculator- Butter SUT %ver%
ECHO Calculator Version 1.8
echo.
ECHO * = Multiply
ECHO + = Plus
ECHO - = Minus
ECHO / = Divide
echo % = Modulo
SET /p UDefine= 
SET /a UDefine=%UDefine%
ECHO =
ECHO %UDefine%
ECHO.
pause
goto menu
:TEXT
echo .EnterTextEditor(%time%) >> Record.TLF
cls
echo Text Editor 1.5
set /p N= name of TXT file: 
cls
set /p WRITE=Write:
echo %WRITE% : written on:%date% : %time% >> %N%.ttf
echo your document was created.
pause
goto menu
:Help
:: help feature
cls
echo Calculator is for calculating numbers.
echo Text Edit edits files.
pause
goto menu

:powerOptions
cls
echo .EnteredPowerOptions >> Record.TLF
:: power options
echo What Would You Like To Do? Type the number
echo.
echo 1.Restart
echo 2.Exit
echo 3.Return to menu 
echo 4.Shutdown PC
:: number inputs
set /p PowerSel=
if %PowerSel% == 1 goto startup
if %PowerSel% == 2 exit
if %PowerSel% == 3 goto menu
if %PowerSel% == 4 shutdown /s
:productivity
:: logging
echo .EnterProductivity >> Record.TLF
:: productivity tools
echo 1.Notes
echo 2.Calculator
echo 3.Menu

set /p PRSel= select:
if %PRSel% == 1 goto TEXT
if %PRSel% == 2 goto calc
if %PRSel% == 3 goto menu

:settings
cls
echo 1.Return to Menu 
echo Set the time:
set /p OPT= New time
set %time% == %OPT%
if %OPT% == 1 goto menu
:datesMenu
cls
echo 1.Calendar
echo 2.Time
echo 3.Menu
set /p direct= Select:
if %direct% == 1 goto cal
if %direct% == 2 goto clock
if %direct% == 3 goto menu
:menu2
:: logging 
echo .EnterToolMenu(%time%) >> Record.TLF
:: some other menu
echo 1.Calc
echo 2.Text Editor
echo 3.How to Give
echo Feedback
echo 4.Help

echo 6.Additional
echo 7.Accessories
echo 8.Personalize
set /p OPTI= select option:
if %OPTI% == 1 goto calc
if %OPTI% == 2 goto UAC
if %OPTI% == 3 goto giveFeedback
if %OPTI% == 4 goto help
if %OPTI% == 6 goto additional
if %OPTI% == 7 goto accessories
if %input% == 8 goto textColor

:UAC
:: user account control
cls
echo do you want to let Text Editor to edit your files?
set /p UACSel= Yes = 1 No = 2:
if %UACSel% == 1 goto TEXT
if %UACSel% == 2 goto menu
:SUTInfo
cls
echo ========================
echo         BUTTER SUT
echo ========================
echo version: %ver%
echo KERNEL: SUT NT 1.4
echo ========================
echo software type: 
echo system usability tool
echo (according to CVE) :D
echo ========================
echo first commenter: naum
pause
goto menu
:ctrlPanel
:: the title says it all...
cls
echo 1.Power options
echo 2.Productivity
echo 3.Menu
echo 4.BROKEN MODE (DANGER)
echo 5.show nuclear show :D 6.NUKE 7.Hi
:: decalre variable
set /p ControlSel= select:
:: if conditions
if %ControlSel% == 1 goto powerOptions 
if %ControlSel% == 2 goto menu2
if %ControlSel% == 3 goto menu
if %ControlSel% == 4 goto brokenMode
if %ControlSel% == 5 goto nuclearIcon
if %ControlSel% == 6 goto nuke
if %ControlSel% == 7 goto hi
:nuclearIcon
:: clear screen command
cls
:: some nuclear animation in ASCII
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@QX)E@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@E)XQ@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@E^`  'W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@W'  `^E@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@G=      `k@@@@@@@@@@@@@@@@@@@@@@@@@@@@w`      =W@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@M!          L@@@@@@@@@@@@@@@@@@@@@@@@@@L          !M@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@Q*             r#@@@@@@@@@@@@@@@@@@@@@@#r             *Q@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@l`               _0@@@@@@@@@@@@@@@@@@@@0_               `u@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@#r                  .M@@@@@@@@@@@@@@@@@@M.                  r#@@@@@@@@@@@
echo @@@@@@@@@@#^                    `j@@@@@@@@@@@@@@@@j`                    ^#@@@@@@@@@@
echo @@@@@@@@@@)                       }@@@@@@@@@@@@@@}                       )@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@k                         r#@@@@@@@@@@#r                         k@@@@@@@@@
echo @@@@@@@@Q-                         `j@@@@@@@@@@j`                         -Q@@@@@@@@
echo @@@@@@@@T                        `}B@@@Qd3KdQ@@@B}`                        l@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@#:                       _D@@#V:      :V#@@E_                       :#@@@@@@@
echo @@@@@@@g`                      `d@@Q:          :Q@@d`                      `g@@@@@@@
echo @@@@@@@d                       ~@@@v            v@@@~                       d@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@v            v@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Q:          :Q@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#y:      :V#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Qd33dQ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@0I0#@@@@#0I0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@W'  `-,,-`  'W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@k`            `k@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@L                L@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#r                  r#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B=                    =B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@g,                      ,g@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@I`                        `X@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@}                            }@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@#)                              )#@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@#r                                r#@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@#du^-                        -^uO#@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@QZk]*!_'`      `'_!*]kZQ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#BQQQQB#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 1 /NOBREAK >nul
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 3 /NOBREAK >nul
echo note: i typed ALL of this mess
pause
goto menu
:brokenMode
:: intentional crashes 
set CrashReason == 1
cls
echo :(
timeout /T 2 /NOBREAK >nul
echo %random%
timeout /T 2 /NOBREAK >nul
echo %random%%random%%random%%random%%random%%random%%random%
timeout /T 4 /NOBREAK >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
timeout /T 3 /NOBREAK >nul
echo BROKEN! haha
timeout /T 1 /NOBREAK >nul
echo nevermind. your computer will be okay :D (hopefully) :
timeout /T 5 /NOBREAK >nul
echo please wait......
timeout /T 7 /NOBREAK >nul
echo repair cannot fix your device. Trying to reset system
timeout /T 3 /NOBREAK >nul
cls
timeout /T 3 /NOBREAK >nul
echo restarting....
timeout /T 2 /NOBREAK >nul
echo fixing...
timeout /T 5 /NOBREAK >nul
pause
function CRASH_HANDLER (
	echo .crash.%date%.%CrashReason%.%ver%.%~DPN-0.%time% >> Record.TLF
)
set %CrashReason% == "ManuallyInitiatedCrash"
CRASH_HANDLER
echo since your computer crashed, we would restart it. Please NEVER mess stuff up
timeout /T 1 /NOBREAK >nul
goto startup
:textColor
:: set the text color
cls
echo 1.green
echo 2.white
echo 3.gray
set txtColor= pick:
if %txtColor% == 1 goto setGreen
if %txtColor% == 2 goto setWhite
if %txtColor% == 3 goto setGray
:setGreen
color 0a
echo here you go!
pause
goto menu
:setGray
color 8
echo here you go with your text color!
pause
goto menu
:setWhite
color F
echo ready!
pause
goto menu
:butterDeploy
:: login/setup interface
cls
pause
echo .
echo .LoadingStart(%time%) >> Record.TLF
timeout /T 1 /NOBREAK >nul
echo ..
timeout /T 1 /NOBREAK >nul
echo ...
timeout /T 1 /NOBREAK >nul
echo ....
timeout /T 1 /NOBREAK >nul
echo .....
timeout /T 1 /NOBREAK >nul
echo ......
timeout /T 1 /NOBREAK >nul
echo .......
timeout /T 1 /NOBREAK >nul
echo ........
timeout /T 1 /NOBREAK >nul
echo starting setup...
timeout /T 1 /NOBREAK >nul
echo copying registers.....
echo .NameOfKernel(%~dpn0 ).%time% >> Record.TLF
timeout /T 1 /NOBREAK >nul
echo downloading...
echo .Firststartup > Logs.TLF
echo .NewUser:True.Setup >> Record.TLF
timeout /T 1 /NOBREAK >nul
echo completing setup.....
echo .restart_setup(%time%) >> Record.TLF
timeout /T 2 /NOBREAK >nul
echo 95% complete......
cls
echo preparing..............
echo O......................
timeout /T 1 /NOBREAK >nul
echo .O.....................
timeout /T 1 /NOBREAK >nul
echo ..O....................
timeout /T 1 /NOBREAK >nul
echo ...O...................
timeout /T 1 /NOBREAK >nul
echo ....O..................
timeout /T 1 /NOBREAK >nul
echo .....O.................
timeout /T 1 /NOBREAK >nul
echo ......O................
timeout /T 1 /NOBREAK >nul
echo .......O...............
timeout /T 1 /NOBREAK >nul
echo %name% NEWUSER (%date%,%time%.%username%)
echo ........O..............
timeout /T 1 /NOBREAK >nul
echo .........O..............
timeout /T 1 /NOBREAK >nul
echo ..........O.............
timeout /T 1 /NOBREAK >nul
echo ...........O............
timeout /T 1 /NOBREAK >nul
echo ............O...........
timeout /T 1 /NOBREAK >nul
echo .............O..........
timeout /T 1 /NOBREAK >nul
echo ..............O.........
timeout /T 1 /NOBREAK >nul
echo ...............O........
timeout /T 1 /NOBREAK >nul
echo ................O.......
timeout /T 1 /NOBREAK >nul
echo .................O......
timeout /T 1 /NOBREAK >nul
echo ..................O.....
timeout /T 1 /NOBREAK >nul
echo ...................O....
echo NewUser(%time%, %date%).%name% > REGFILE.LOG
timeout /T 1 /NOBREAK >nul
echo ....................O...
timeout /T 1 /NOBREAK >nul
echo .....................O..
timeout /T 1 /NOBREAK >nul
echo ......................O.
echo download.finish.%ver%(%name%, %username%) >> Record.TLF
timeout /T 1 /NOBREAK >nul
echo .......................O
timeout /T 1 /NOBREAK >nul
echo ........................
echo .SetupComplete(NewUser: false USERNAME: %name% PCName: %username% VER: %ver%) >> Record.TLF
echo successfully downloaded Butter %ver%! :D
echo just dont download this illegally -_-
pause
goto stopcode

:giveFeedback
cls
echo Bug Reps:
echo go to github issues and add it there
echo features:
echo also in github
echo NOTE: IF YOU ARE ON A BETA BUILD, PLEASE DO NOT LEAK MY HARD WORK.
pause
goto menu2
:adminTools
cls
:: admin tools for... admins
echo .AdminToolsOpened(%time%) >> Record.TLF
echo 1.kill your computer
echo 2.crazy error
echo 3.weird
set AdminSel= select:
if %AdminSel% == 1 goto brokenMode
if %AdminSel% == 2 goto crazyError
if %AdminSel% == 3 goto weird

:weird
cls
echo 0xMEME :D :( :C 
pause
goto adminTools
:info
echo .OpenSysInfo(%time%) >> Record.TLF
echo.==============================
timeout /T 1 /NOBREAK >nul
echo     Butter SUT 
timeout /T 1 /NOBREAK >nul
echo.==============================
timeout /T 1 /NOBREAK >nul
echo     DETAILS  
timeout /T 1 /NOBREAK >nul
echo.
timeout /T 1 /NOBREAK >nul
echo     VERSION = %ver%
timeout /T 1 /NOBREAK >nul
echo.     
timeout /T 1 /NOBREAK >nul
echo     RAM = 1GB
timeout /T 1 /NOBREAK >nul
echo.
echo     CORE = %random%
echo.
timeout /T 1 /NOBREAK >nul
echo     HARD_DRIVE = 250GB     
echo.   
timeout /T 1 /NOBREAK >nul
echo     Kernel ver = 5.9.8
timeout /T 1 /NOBREAK >nul
echo.  
echo    Build = 3
echo.
timeout /T 1 /NOBREAK >nul
echo.==============================
timeout /T 2 /NOBREAK >nul
echo  @Copyright Interstar.inc 
timeout /T 2 /NOBREAK >nul
echo.
echo  GPL Public Liscense 3.0
timeout /T 2 /NOBREAK >nul
echo.==============================
timeout /T 2 /NOBREAK >nul
echo     account
timeout /T 1 /NOBREAK >nul
echo.
echo  name: %name%
timeout /T 1 /NOBREAK >nul
echo.
timeout /T 1 /NOBREAK >nul
echo  time: %time%
timeout /T 1 /NOBREAK >nul
echo.
echo  date: %date%
echo SUT: sys usability tool
echo.==============================
echo            End of help
echo.==============================
pause
goto menu
:shutdown
shutdown /S
:restart
shutdown /R
:crash
cls
echo Invalid command.
pause
goto menu
:MAIN
title Common Sense AV- Butter SUT %ver%
cls
echo 1.Security 2.about 3.scan
set /p sel= select:
if %sel% == 1 goto security
if %sel% == 2 goto about
if %sel% == 3 goto scan

:security
cls
echo DO NOT download .exe, .bat or .vbs files from da internet
echo NEVER delete system 32
echo DO NOT visit sketchy sites
echo turn off JavaScript
echo trust me you wont get a virus
pause
goto menu
:about
cls
echo Common Sense protects you from:
echo.
echo 1. Ransomware
echo 2. Enderware
echo 3. Viruses
echo 4. Worms
echo 5. Spyware
echo 6. Robux Scams
echo 7. Scams
pause
goto MAIN
:exit
echo press any key to exit
pause
exit
:scan
 echo Detecting Viruses......

cd C:\
 IF EXIST satish.bat goto infected
 IF EXIST *.vbs goto VBS
 IF EXIST *.com goto com
 if exist *.scr goto scr
 if exist *.ps1 goto ps1
 if exist *.py goto py
 if exist *.asm goto asm
 if exist Alureon.EF goto Alureon.EF
 if exist Stasky.A goto Stasky.A
 if exist pushbot.tc goto pushbot.TC
 if exist *.jar goto java
 if exist *.f goto f
 IF EXIST WinCustomize.exe goto WinCustomize
 goto clean
 :infected
 echo WARNING VIRUS DETECTED!
 del satish.bat
 pause
 goto start
 :clean
 echo your System is secure now and virus has been deleted!
 pause
 goto menu
:WinCustomize
cls
echo cleening...
del WinCustomize.exe
pause
goto menu
:VBS
echo suspicious VBS script removed!
del *.vbs
pause
goto menu
:com
echo suspicious DOS app removed! (it is not compatible with windows anyway)
del *.com 
pause
goto menu
:scr
echo the suspicious screensaver has been deleted. (it saves your battery too!)
del *.scr
pause
goto menu
:ps1
echo deleted suspicious powershell executable
del *.ps1
pause
goto menu
:py
echo sus python script removed
del *.py
pause
goto menu
:asm
echo suspicious Assembly CPU Commands removed
del *.asm
pause
goto menu
:Alureon.EF
echo removing virus...
del Alureon.EF.exe
pause
goto menu
:Stasky.A
echo removing Stasky.A virus
del Stasky.A.exe
pause
goto menu
:pushbot.TC
echo removing pushbot.TC virus
del pushbot.tc
pause
goto menu
:Oneeva.A!ml
echo removing Oneeva.A!ml virus...
del Oneeva.A!ml.lnk
pause
goto menu

:java
echo suspicious JAR file deleted
del *.jar
pause
goto menu
:f
echo suspicious Fortran file deleted
del *.f
pause
goto menu
:enterDNS
echo enter domain of your failing website
set /p IPInput= IP:
ping %IPInput%
pause
goto menu
:findFile
set /p ItemPath= Path of folder (full path):
set /p ItemName= Name of file (eg. myfile.txt)
cd %ItemPath%
type %ItemName%
pause
goto menu
:stopcode
cls
color 17
echo ERROR: Installation Failed (Fix in 21.10 RTM)
echo.
echo The files failed to register.
echo please click SPACE to return to GUI
echo SysCrash(InstallFailed, %ver%) >> Record.TLF
echo CRASHINFO: %date%,%time%.%ver% (%username% / %name%) >> CRASH-%name%.DUMP
echo REASON: Installation Crashed >> CRASH-%name%.DUMP

echo Check for updates: https://github.com/FrankEnderman/butter or check with the developer. 
set name == "ROOTUSER"

pause
goto menu
:CURL
set /p curl= URL:
curl %curl%
pause
goto menu