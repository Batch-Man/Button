# Button - by Kvc
## Description

This function helps in Adding a little GUI effect into your batch program.
It Prints simple Button on the cmd console at specified X Y co-ordinate.
After printing, Returns the area of the button on CMD and the Inverted color
You can use this information in the main program with GetInput.exe Plugin of
Batch. And, it will make your life much more easier than before.

NOTE: IN THIS VERSION, AN ADDITIONAL PARAMETER IS ADDED @END OF CALL.
      IT ALSO TAKES CARE OF THE QUICKEDIT MODE 'ISSUE' POST WIN 7 ERA.

Author: Kvc

## Usage
`call Button [Item 1] [Item 2] [Item 3] ... X _Var_Box _Var_Hover _Var_Code`    
`call Button [help ^| /^? ^| -h ^| -help ^| --help]`    
`call Button ver`

Where:-

`[Item]` is short for this COMBINATION = `[X] [Y] [color] "[Button Text]"`  

`[X]`	    X-ordinate of top-left corner of Button     
`[Y]`	    Y-co_ordinate of top-left corner of Button  
`ver`	    Version of Button function  
`[Item #]`   The Buttons to display. Item Represents elements as told above.    

`X`          Here, the Single 'X' (Must be FOURTH last element) indicates
           the Loop Sequence breaker for the Function. After 'X' You need
           to provide three Variables. Which will return the Corresponding 
           values for the GetInput.exe, and Batbox.exe  

`_Var_Box`   The THIRD last parameter, which is name of the variable to save
           the coordinates of All Buttons on console. (GetInput Supported)  
`_Var_Hover` The SECOND last parameter, which is name of the variable to save
           mouse hover color for each button. (GetInput Supported)  
`_Var_Code`  The LAST parameter, which is the name of the variable to save 
           'batbox' supported code to print buttons on console Quickly
           without calling the button function again and again in loop. 

## Example: 
Use the above output variables with 'GetInput & Batbox' Plugins as follow:

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

## Additional Info:      

This version of Button function contains much more GUI Capabilities.
As it uses batbox.exe and calls it only once at the end of calculation...
For the most efficient output. This ver. uses GetInput By Aacini too. For the
Advanced Output on the console.      

Visit www.Batch-man.com for more...      

PLUGINS REQUIRED FOR THIS PROJECT:      
Box Function              by Kvc      
Batbox                    by Darkbatcher      
GetInput                  by Aacini      
Getlen Function           by Kvc      
Quickedit                 UNKNOWN      
      
#batch-man
