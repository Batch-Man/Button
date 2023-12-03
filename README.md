# Button
## Description

This function helps in adding a GUI button to your batch program.
It displays a button on the console at a specified (X,Y) coordinate.
After printing, it returns the area of the button and the inverted color, which can be used afterward with the GetInput.exe plugin.

> [!NOTE]  
> In this version, an addition parameter is required at the end of the call
> It also fixes the QuickEdit issues in Windows 7 and later systems

**Author: Kvc**

## Usage

`call Button [Item 1] [Item 2] [Item 3] ... X _Var_Box _Var_Hover _Var_Code`    
`call Button [help ^| /^? ^| -h ^| -help ^| --help]`    
`call Button ver`

Where:

`[Item]` is short for this combination: `[X] [Y] [color] "[Button text]"`  

`[X]`	    X coordinate of the top-left corner of the button
`[Y]`	    Y coordinate of the top-left corner of the button
`ver`	    Displays the version of the Button function  
`[Item #]`   The buttons to display.

`X`        Here, the single 'X' (Must be the fourth last element) indicates the loop sequence breaker for the function. After the 'X' you need to provide three variables, which will return the corresponding values for GetInput and BatBox.

`_Var_Box`   The third last parameter is the name of the variable to save the coordinates of all the buttons on the console (Support for GetInput).
`_Var_Hover` The second last parameter is the variable's name to save mouse hover color for each button (Support for GetInput).
`_Var_Code`  The last parameter is the name of the variable to save the BatBox argument string.

## Example
Use the above output variables with GetInput and Batbox plugins as follows:

```bat
Call Button 5 15 a0 "Button 1" 15 15 a0 "Button 2" X _Box _Hover _Code
:Loop
batbox %_Code%
GetInput /M %_Box% /H %_Hover%

If "%Errorlevel%" == "1" (Btn 1 Clicked.)
If "%Errorlevel%" == "2" (Btn 1 Clicked.)
timeout /t 3 >nul
Goto :Loop
```

## Additional information

This new version of the Button function is optimized, as it uses batbox.exe and calls it only once at the end of calculation.

### Required plugins

- Box Function              by Kvc      
- Batbox                    by @darkbatcher      
- GetInput                  by Aacini      
- Getlen Function           by Kvc      
- QuickEdit                 by @anic17

Visit https://batch-man.com   

#batch-man
