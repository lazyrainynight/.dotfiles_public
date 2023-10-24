@echo off
set POWERSHELL=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe
"%POWERSHELL%" -ExecutionPolicy RemoteSigned -command "~\.dotfiles\MyScripts_win\_PullSrc_\git.pull.src.ps1 %1"
pause