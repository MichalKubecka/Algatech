@echo off
REM @file mount.bat
REM @author kubecka@alga.cz
REM @brief Batch script to mount Algatech drives

REM defvar
set USERNAME=login
set PASSWORD=pwd

set SERVER=192.168.1.2

goto :end-mount
:mount
net use %1 /delete /y 2>nul
net use %1 \\%SERVER%\%2 %PASSWORD% /user:%USERNAME% /persistent:yes
goto :eof
:end-mount

REM Connect all drives
call :mount H: home\%USERNAME%
call :mount L: microscop
call :mount P: programs
call :mount S: data

pause
