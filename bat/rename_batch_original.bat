@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a:-d /b NOAA17_????????_????_AVHR.L1B') do (
REM ���ļ�������������NOAA17_????????_????_AVHR.L1B���ļ�
set "x=%%i"
REM ���ļ�����������x.���������!x!��ʾx��ֵ(�ַ���),��!x:~a,b!��ʾx������a���ַ������b���ַ���ɵ��Ӵ�
echo !x! ^>^>^> NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B
REM ����Ļ����ʾ: !x! >>> NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B"
)
echo ��ȷ��
pause
for /f "delims=" %%i in ('dir /a:-d /b NOAA17_????????_????_AVHR.L1B') do (
set "x=%%i"
ren "!x!" "NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B"
REM �� !x! �������� NO17_AVHRR_HRPT_L1_ORB_MLT_NUL_!x:~7,8!_!x:~16,4!_1100M.L1B
)
pause
goto :eof