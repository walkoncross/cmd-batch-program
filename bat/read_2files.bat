@echo off&setlocal enabledelayedexpansion

set n=0

for /f "tokens=2 delims=:" %%a in ('findstr /n .* user.txt') do (

call:getpass !n! p

echo.%%a !p!

set /a n+=1

)

pause&goto:eof

:getpass

if %1==0 set/p%2=<password.txt&goto:eof

for /f "skip=%1" %%a in (password.txt) do set "%2=%%a"&goto:eof
