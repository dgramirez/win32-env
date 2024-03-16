@echo off

set SUBST_DRIVE=P:
set SUBST_PATH=C:\prj

:: Note - Each shell.bat would have its own subst checking to see if its correct!
if not exist %SUBST_DRIVE%\ ( subst %SUBST_DRIVE% %SUBST_PATH% )

cmd.exe /K "setup_cl.bat && %SUBST_DRIVE%"