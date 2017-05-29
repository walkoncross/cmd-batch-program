setlocal enabledelayedexpansion

@echo off

set pwd=%CD%
echo %pwd%
echo o

REM 指定要进行批量重命名的文件夹
set dir0="./0"
echo %dir0%

dir /a:-d /b !dir0!>temp.txt

@echo off

for /f "delims=" %%i in (temp.txt) do (
REM 对文件夹中所有的文件
set "x=%%i"
REM 把文件名赋给变量x.后面可以用!x!表示x的值(字符串),用!x:~a,b!表示x中跳过a个字符后面的b个字符组成的子串
echo !x! ^>^>^> 3!x:~1,50!
REM 在屏幕上显示: !x! >>> 3!x:~1,50!
)

cd %dir0%

for /f "delims=" %%i in (!pwd!/temp.txt) do (
set "x=%%i"
rename "!x!" "3!x:~1,50!"
)