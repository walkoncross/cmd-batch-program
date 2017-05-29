@echo off

REM 记录当前工作路径
set pwd=%CD%
echo %pwd%

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

set cnt=0

@echo off

cd %pwd%	

@echo off

REM 处理folds_list.txt中的每个文件夹
for /f "delims=" %%f in (fold_list.txt) do (
	echo %%f
	cd %%f
	dir /a:-d /b>"%pwd%/temp_list.txt"

	@setlocal enabledelayedexpansion
	for /f "delims= usebackq" %%i in ("%pwd%/temp_list.txt") do (

		set x=%%i
		echo "!cnt! file: !x!"

		copy "!x!" "!dst_dir!\7_sample!cnt!.txt"
		set /a cnt=!cnt!+1
	)
	
	cd %pwd%
)

if exist "%pwd%\temp_list.txt" (
	del "%pwd%\temp_list.txt"
) else  (
	echo "temp_list.txt 不存在！"
)