:: Run this file as Administrator
@echo off
set /p min=Za ile minut? Wpisz 'a' aby anulowac odliczanie. 
set /a sec=(60*min)


IF /I "%min%"=="a" (
    GOTO ABORT
) ELSE (
    GOTO SHUTDOWN
)

:ABORT
CLS
ECHO ABORT
shutdown /a
PAUSE
EXIT

:SHUTDOWN
CLS
ECHO SHUTDOWN
shutdown /a
PAUSE
shutdown /t %sec% /s
EXIT
