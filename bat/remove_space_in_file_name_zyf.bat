setlocal enabledelayedexpansion

@echo on

set pwd=%CD%
echo %pwd%

REM ָ��Ҫ�����������������ļ���
set dir0="./"
echo %dir0%

dir /a:-d /b !dir0!>temp.txt

cd %dir0%

for /f "delims=" %%i in (!pwd!/temp.txt) do (
set x=%%i
echo "%x%"
set new_name=%x: =%
echo "%new_name%"
rename "%x%" "%new_name%"
)