@echo off
::echo on
setlocal enabledelayedexpansion

set file_list=list.txt
set dir_new="../selected_by_move_batch"

::mkdir %dir_new%

::for /f "delims=" %%i in ('dir /s /d *.bmp *.jpg') do (

for /f "delims=" %%i in (%CD%/%file_list%) do (
::@echo %%i
set fn=%%~ni
@echo !fn!
set pu=!fn:~17,2!
@echo !pu!
set str=!fn:~20,2!
@echo !str!
set /a roll=!str!
@echo !roll!

if !pu!==PD (
	if !roll! LSS 45 ( echo %%i>>list_pitchdown.txt )
	)
)

pause

:end