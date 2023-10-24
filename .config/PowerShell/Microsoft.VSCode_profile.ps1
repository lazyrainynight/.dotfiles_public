# oh-my-posh
oh-my-posh init pwsh --config '~\.dotfiles\.config\OhMyPosh\mytheme.win.omp.json' | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# alias
Set-Alias -Name kc -Value kubectl
Set-Alias -Name kb -Value kubectl

Set-Alias -Name dn -Value dotnet
Set-Alias -Name dk -Value docker

Set-Alias -Name g -Value git

# Set-Alias -Name vim -Value nvim
# Set-Alias -Name vi -Value nvim

Set-Alias -Name la -Value "ls"
Set-Alias -Name l -Value "ls"

set-alias -Name exp -Value OpenWinExp
function OpenWinExp {
    $cwd = Get-Location
    explorer $cwd
}

Function ClsAndLs {Clear-Host; Get-ChildItem;}
Set-Alias -Name cl -Value ClsAndLs

Function Set-Location-My {Set-Location -Path C:\my; Clear-Host; Get-ChildItem;}
Function Set-Location-MySrc {Set-Location -Path C:\my\src; Clear-Host; Get-ChildItem;}
Function Set-Location-MyDev {Set-Location -Path C:\my\dev; Clear-Host; Get-ChildItem;}

Function Set-Location-MyScripts {Set-Location -Path ~\.dotfiles\MyScripts_win\; Clear-Host; Get-ChildItem;}
Function Set-Location-MyCompares {Set-Location -Path C:\my\compares; Clear-Host; Get-ChildItem;}
Function Set-Location-MyNotes {Set-Location -Path C:\my\notes; Clear-Host; Get-ChildItem;}
Function Set-Location-MyWorkNotes {Set-Location -Path C:\my\notes-for-work; Clear-Host; Get-ChildItem;}
Function Set-Location-Ssh {Set-Location -Path ~\.ssh; Clear-Host; Get-ChildItem;}
Function Set-Location-DotFiles {Set-Location -Path ~\.dotfiles; Clear-Host; Get-ChildItem;}
Function Set-Location-PSReadLineHistory {Set-Location -Path ~\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\; Clear-Host; Get-ChildItem;}

Function Set-Location-nvim {Set-Location -Path ~\AppData\Local\nvim; Clear-Host; Get-ChildItem;}
Function Set-Location-nvim-data {Set-Location -Path ~\AppData\Local\nvim-data; Clear-Host; Get-ChildItem;}

Set-Alias -Name GoMy -Value Set-Location-My
Set-Alias -Name GoSrc -Value Set-Location-MySrc
Set-Alias -Name GoDev -Value Set-Location-MyDev

Set-Alias -Name GoScripts -Value Set-Location-MyScripts

Set-Alias -Name GoCompare -Value Set-Location-MyCompares
Set-Alias -Name GoCompares -Value Set-Location-MyCompares

Set-Alias -Name GoNote -Value Set-Location-MyNotes

Set-Alias -Name GoWorkNote -Value Set-Location-MyWorkNotes
Set-Alias -Name GoNoteWork -Value Set-Location-MyWorkNotes

Set-Alias -Name GoSsh -Value Set-Location-Ssh

Set-Alias -Name GoPSReadLineHistory -Value Set-Location-PSReadLineHistory

Set-Alias -Name GoDot -Value Set-Location-DotFiles

Set-Alias -Name GoNvim -Value Set-Location-nvim
Set-Alias -Name GoNvimData -Value Set-Location-nvim-data
