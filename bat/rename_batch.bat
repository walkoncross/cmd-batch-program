setlocal enabledelayedexpansion

@echo off

set pwd=%CD%
echo %pwd%
echo o

REM ָ��Ҫ�����������������ļ���
set dir0="./0"
echo %dir0%

dir /a:-d /b !dir0!>temp.txt

@echo off

for /f "delims=" %%i in (temp.txt) do (
REM ���ļ��������е��ļ�
set "x=%%i"
REM ���ļ�����������x.���������!x!��ʾx��ֵ(�ַ���),��!x:~a,b!��ʾx������a���ַ������b���ַ���ɵ��Ӵ�
echo !x! ^>^>^> 3!x:~1,50!
REM ����Ļ����ʾ: !x! >>> 3!x:~1,50!
)

cd %dir0%

for /f "delims=" %%i in (!pwd!/temp.txt) do (
set "x=%%i"
rename "!x!" "3!x:~1,50!"
)