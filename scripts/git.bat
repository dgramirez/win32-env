@echo off

:: NOT MINE! Credit below:
:: https://www.nu42.com/2016/05/display-git-branch-windows-command-prompt.html
:: https://web.archive.org/web/20221127025915/https://www.nu42.com/2016/05/display-git-branch-windows-command-prompt.html

:: Modifications: Do not execute git.exe unless a parameter is present.
::                Good for shell startup scripts

if not [%1] == [] ( git.exe %* )
set GITBRANCH=
for /f "tokens=2" %%I in ('git.exe branch 2^> NUL ^| findstr /b "* "') do set GITBRANCH=%%I

if "%GITBRANCH%" == "" (
    prompt $P$G 
) else (
    prompt $P $C$E[1;7;32;47m%GITBRANCH%$E[0m$F $G 