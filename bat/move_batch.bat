@echo off

set file_list=list.txt
set dir_new="../selected_by_move_batch"

mkdir %dir_new%

for /f "delims=" %%i in (%CD%/%file_list%) do (
move %%i %dir_new%
)