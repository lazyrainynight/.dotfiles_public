@echo off
set POWERSHELL=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe
"%POWERSHELL%" -ExecutionPolicy RemoteSigned -command "~\.dotfiles\MyScripts_win\_FetchDev_\git.fetch.dev.ps1 %1"
pause