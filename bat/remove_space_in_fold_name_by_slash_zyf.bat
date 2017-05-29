@echo on

set file_list=fold_list.txt

for /f "delims=" %%i in (%CD%/%file_list%) do (
set x=%%i
echo %x%
set new_name=%x: =_%
echo %new_name%
rename "%x%" %new_name%
)