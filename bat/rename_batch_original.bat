@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a:-d /b NOAA17_????????_????_AVHR.L1B') do (
REM 对文件夹中所有形如NOAA17_????????_????_AVHR.L1B的文件
set "x=%%i"
REM 把文件名赋给变量x.后面可以用!x!表示x的值(字符串),用!x:~a,b!表示x中跳过a个字符后面的b个字符组成的子串
echo !x! ^>^>^> NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B
REM 在屏幕上显示: !x! >>> NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B"
)
echo 请确认
pause
for /f "delims=" %%i in ('dir /a:-d /b NOAA17_????????_????_AVHR.L1B') do (
set "x=%%i"
ren "!x!" "NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B"
REM 把 !x! 重命名成 NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B
)
pause
goto :eof