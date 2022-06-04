@echo off 
title CVE-2022-30190 Patch by LMSQ
echo make sure you ran this as admin!
pause
reg export HKEY_CLASSES_ROOT\ms-msdt C:\msdt_regkey_backup.reg
reg delete HKEY_CLASSES_ROOT\ms-msdt /f
echo the patch is done, do your weird stuff
pause