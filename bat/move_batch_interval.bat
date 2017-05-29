@echo off
setlocal enabledelayedexpansion

set file_list=list.txt
set dir_new="../selected_by_move_batch"

set interval=10

mkdir %dir_new%

set a=0
for /f "delims=" %%i in (%CD%/%file_list%) do (
set /a a=!a!+1
set /a b=!a! %% !interval!
if !b!==0 move %%i %dir_new%
)