@echo off
set POWERSHELL=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe
"%POWERSHELL%" -ExecutionPolicy RemoteSigned -command "~\.dotfiles\MyScripts_win\_PullDev_\git.pull.dev.ps1 %1"
pause