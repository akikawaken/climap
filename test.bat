@echo off
set count=0
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
:loop
set /a count=%count% + 1
echo %ESC%[%count%m %count% %ESC%[0m
if %count% == 150 pause
goto loop