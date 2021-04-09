

for /f "delims=" %%i in ('netstat|findstr 1583') do (set a=%%i)
echo %a%
pause

