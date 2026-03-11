@echo off
REM @file mount_persistent.bat
REM @author kubecka@alga.cz
REM @brief Batch script to mount Algatech drives

REM defvar
set USERNAME=login

set SERVER=192.168.1.2

goto :end-mount
:mount
net use %1 /delete /y 2>nul
net use %1 \\%SERVER%\%2 /persistent:yes /savecred
goto :eof
:end-mount

REM Connect all drives
call :mount H: home\%USERNAME%
REM call :mount ?: biotech 
REM call :mount R: cycles
REM call :mount L: microscop
REM call :mount M: photosyn
call :mount P: programs
call :mount S: data

pause
