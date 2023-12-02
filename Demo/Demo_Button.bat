@Echo off
Mode 80,25

pushd "..\Src"
Set "Path=%cd%;%cd%\Files;%Path%;"
Popd

cls
Color 80
Call Button 5 3 a0 "Button 1" 20 3 c0 "Button 2" 35 3 b0 "Button 3" 50 3 d0 "Button 4" 65 3 e0 "Button 5" 5 8 f0 "Button 6" 20 8 10 "Button 7" 35 8 20 "Button 8" 50 8 30 "Button 9" 65 8 40 "Button 10" 5 13 50 "Button 11" 20 13 60 "Button 12" 35 13 70 "Button 13" 50 13 80 "Button 14" 65 13 90 "Button 15" 20 20 F0 " This is my Special Color Combo. :)" X _Box _hover _Code

:Loop
REM To reprint the buttons Quick, without re-calculating every button each time...
REM This SAVEs alot of time...
Batbox %_Code% 

REM To check, if a Button is clicked or not.
GetInput /M %_Box% /H %_hover%

Title button # %Errorlevel% clicked.
Goto :Loop