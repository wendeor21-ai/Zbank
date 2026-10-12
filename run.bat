@echo off
cd /d "%~dp0"
echo Starting ZeBank...
java -cp "build\classes;src\mysql-connector-j-8.1.0.jar" zebank.LoginPage
pause
