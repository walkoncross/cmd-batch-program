echo off
setlocal enabledelayedexpansion

set file_list=list.txt
set dir_new="./copy_by_copy_batch"

mkdir %dir_new%

for /f "delims=" %%i in (%CD%/%file_list%) do (
echo %%i
copy %%i !dir_new!"
)