@echo off
color 0a 


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


echo Created by JB
echo.


set /p choice="Press 1 to continue: "
if "%choice%" neq "1" (
    echo Exiting...
    exit /b
)


net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~0' -Verb RunAs"
    exit /b
)


powershell -Command "Invoke-RestMethod https://get.activated.win | Invoke-Expression"
