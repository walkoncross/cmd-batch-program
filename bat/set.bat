set a=25
set interval=5

set str="hello world"
echo %str%

set /a b=%a% %% %interval%
if %b%==1 echo %b%
pause