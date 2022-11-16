@echo off
Set WshShell = WScript.CreateObject("WScript.Shell")
title=Boo.
color 4f
@mode 54,2
echo NO ESCAPE.
timeout 1 /nobreak > nul
cls
::||||||||||||||||||||||||||||||||||||| comment the below line to show cmd window
@powershell -window Hidden -command ""
::||||||||||||||||||||||||||||||||||||| comment the above line to show cmd window
set /a moves=0
::||||||||||||||||||||||||||||||||||||| set number of moves in here
set /a maxmoves=99999999
::||||||||||||||||||||||||||||||||||||| 100 lasts ~2(s), 500 lasts ~8(s), depends on computer speed
set /a movesleft=%maxmoves%
:start
title=MOUSE MINE.
if %moves% GEQ %maxmoves% (
goto end
)
rundll32 user32.dll,SetCursorPos 100, 100, 100
set /a moves = %moves%+1
set /a movesleft = %movesleft%-1
cls
echo %movesleft% moves left.
goto start
:end
exit