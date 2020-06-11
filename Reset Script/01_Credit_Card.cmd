@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Machine Learning
echo.       * Course Files installed to C:\Machine--Learning
echo.          Data Sources
echo.          Lab Guide
echo.          Labs
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Machine--Learning\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\01_Credit_Card
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Machine--Learning.git 01_Credit_Card
EXIT