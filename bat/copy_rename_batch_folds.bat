@echo off

REM ��¼��ǰ����·��
set pwd=%CD%
echo %pwd%

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

set cnt=0

@echo off

cd %pwd%	

@echo off

REM ����folds_list.txt�е�ÿ���ļ���
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
	echo "temp_list.txt �����ڣ�"
)