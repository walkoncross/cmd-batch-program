setlocal enabledelayedexpansion

@echo off

REM ��¼��ǰ����·��
set pwd=%CD%
echo %pwd%

REM ָ��Ҫ����copy���ļ����ڵ�Դ�ļ���
set src_dir="./0"
echo %src_dir%

REM ָ��������Ŀ���ļ���
set new_dir="./copy"
echo %new_dir%

@echo off
if exist %new_dir% (
	echo "Ŀ���ļ����Ѵ���"
) else (
	echo "����Ŀ���ļ���"
	mkdir %new_dir%
)

REM ��¼Ŀ��·��
cd %new_dir%
set dst_dir=%CD%
echo %dst_sir%

cd %pwd%

dir /a:-d /b !src_dir!>temp.txt

cd %src_dir%

set cnt=0

type "%pwd%\temp.txt"

@echo off

for /f "delims= usebackq" %%i in ("%pwd%\temp.txt") do (

set "x=%%i"
echo " !cnt! file: !x!"

copy "!x!" "!dst_dir!\7_sample!cnt!.txt"
set /a cnt=%cnt%+1
)