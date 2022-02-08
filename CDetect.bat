@echo off
title CDetect 2022.0.0.0.1 Closed Alpha
echo scanning...
set /p filename= File to scan:
setlocal enabledelayedexpansion
set /a count=1 
for /f "skip=1 delims=:" %%a in ('CertUtil -hashfile "%filename%" MD5') do (
  if !count! equ 1 set "MD5=%%a"
  set/a count+=1
)
set "MD5=%MD5: =%
echo MD5 Hash: %MD5%
echo NOTE: if there are no warnings, the file is clean.
if %MD5% == "c915c717919f5b28f5e343fda16a84f6" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "a0e4f5bcd5afc8b891cafcaccec37364" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "3e9b7b76b154342811a8dcc2b507c1ce" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "c1d306405e800aefb0c7ff68b7c54454" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "801d7f317b7a067295bf4f8ea9dbf75f" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "b04accbeb00ae7ec424c45a9277be90f" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "516a488e59138e5b88b1e4356eb86e00" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "871ba3e3ed099c4a168358f21930b8e7" echo File is Infected! Virus: HackTool:Win32/Keygen
if %MD5% == "6a93a4071cc7c22628af40a4d872f49b" echo File is Infected! Virus: Malware:Win32/malware.general
if %MD5% == "297803422dab699e8b9050ae43b4ea4c" echo File is Infected! Virus: UDS:DangerousObject.Multi.Generic
if %MD5% == "068635c7a75c9e295ecafba1ba207dbd" echo File is Infected! Virus: UDS:DangerousObject.Multi.Generic
if %MD5% == "b9ab2f549a385ec8e899de01c92440b6" echo File is Infected! Virus: Unwanted:PCAcceleratePro 
if %filename% == *.chech echo that is a encrypted file created by STOP Djvu ransomware
if %filename% == *.luceq echo that is a encrypted file created by STOP Djvu ransomware
if %MD5% == "77ad291b0b88a7314c1dd811d669e077" echo File is infected. Virus: Random Music Player
if exist C:\Users\%username%\AppData\Roaming\youtubetomp3 echo Infected by: random music player
if exist C:\ProgramData\xpcap echo PCAcceleratePro virus found! uninstall from settings/control panel

endlocal
pause
exit/B