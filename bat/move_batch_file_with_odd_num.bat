@echo off
setlocal enabledelayedexpansion

set file_list=list.txt
set dir_new="../selected_by_move_batch"

mkdir %dir_new%

for /f "delims=" %%i in (%CD%/%file_list%) do (
set fn=%%i
@echo !fn!
set ch=!fn:~-5,1!
@echo !ch!
set /a a=!ch!
@echo !a!
set /a b=!a! %% 2
if !b!==1 move %%i !dir_new!
)