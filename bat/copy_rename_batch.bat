setlocal enabledelayedexpansion

@echo off

REM 记录当前工作路径
set pwd=%CD%
echo %pwd%

REM 指定要进行copy的文件所在的源文件夹
set src_dir="./0"
echo %src_dir%

REM 指定并创建目的文件夹
set new_dir="./copy"
echo %new_dir%

@echo off
if exist %new_dir% (
	echo "目的文件夹已存在"
) else (
	echo "创建目的文件夹"
	mkdir %new_dir%
)

REM 记录目的路径
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