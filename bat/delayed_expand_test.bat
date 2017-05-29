@setlocal EnableDelayedExpansion
@echo off
echo ===Test EnableDelayedExpansion===

set var=Before
echo Before:
echo '%%var%%' = %var%
echo '^^!var^^!' = !var!
set var=After & echo Normal: %var%  Delayed: !var!
echo After:
echo '%%var%%' = %var%
echo '^^!var^^!' = !var!
endlocal

@setlocal DisableDelayedExpansion
echo ===Test DisableDelayedExpansion===

set var=Before
echo Before:
echo '%%var%%' = %var%
echo '^^!var^^!' = !var!
set var=After & echo Normal: %var%  Delayed: !var!
echo After:
echo '%%var%%' = %var%
echo '^^!var^^!' = !var!

pause