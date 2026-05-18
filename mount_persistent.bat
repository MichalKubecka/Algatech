@echo off
REM @file mount_persistent.bat
REM @author kubecka@alga.cz
REM @brief Batch script to mount Algatech drives

REM Read username from keyboard
set /p USERNAME=Username: 

set SERVER=192.168.1.2

goto :end-mount
:mount
net use %~1 /delete /y 2>nul
net use %~1 "\\%SERVER%\%~2" /user:%USERNAME% /persistent:yes /savecred
timeout /t 1 /nobreak >nul
REM goto :eof ... equivalent to return from a function -> go back to the call
goto :eof
:end-mount

REM Connect all drives
call :mount H: home\%USERNAME%
REM call :mount ?: biotech 
REM call :mount ?: aap 
REM call :mount R: cycles
REM call :mount L: microscop
REM call :mount M: photosyn
call :mount P: programs
call :mount S: data

pause
