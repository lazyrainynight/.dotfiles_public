@echo off
set POWERSHELL=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe
"%POWERSHELL%" -ExecutionPolicy RemoteSigned -command "~\.dotfiles\MyScripts_win\_Print_\print.powershell.version.ps1 %1"
"%POWERSHELL%" -ExecutionPolicy RemoteSigned -command "~\.dotfiles\MyScripts_win\_Print_\print.connection.strings.ps1 %1"
pause
