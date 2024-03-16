@echo off
IF DEFINED cmd_autorun_has_executed ( GOTO :eof )

:: Aliases for cmd.exe.
::DOSKEY :wq=exit
::DOSKEY :wq!=exit
::DOSKEY :q=exit
::DOSKEY :q!=exit
DOSKEY cd..=cd ..
DOSKEY ..=cd ..
DOSKEY .2=cd ..\..
DOSKEY .3=cd ..\..\..
DOSKEY .4=cd ..\..\..\..
DOSKEY .5=cd ..\..\..\..\..
DOSKEY clear=cls

:: Use git.bat over git.exe. (Requires PATH for git.bat & git.exe)
::DOSKEY git=git.bat $*

:: Run bash commands in its own shell (Requires PATH for sh.exe & bash.exe)
::DOSKEY sh=sh --login -i -c "$*"
::DOSKEY bash=bash --login -i -c "$*"

:: Aliases for bash shell above

::DOSKEY ls=bash --login -i -c "ls --color=auto $*"
::DOSKEY ll=bash --login -i -c "ls --color=auto -la $*"
::DOSKEY grep=bash --login -i -c "grep $*"
::DOSKEY egrep=bash --login -i -c "egrep $*"
::DOSKEY fgrep=bash --login -i -c "fgrep $*"
::DOSKEY find=bash --login -i -c "find $*"
::DOSKEY cat=bash --login -i -c "cat $*"
::DOSKEY touch=bash --login -i -c "touch $*"
::DOSKEY md5=bash --login -i -c "openssl md5 $*"
::DOSKEY sha1=bash --login -i -c "openssl sha1 $*"

SET cmd_autorun_has_executed=1
