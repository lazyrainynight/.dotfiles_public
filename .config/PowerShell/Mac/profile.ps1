#Homebrew
# Add-Content -Path $PROFILE.CurrentUserAllHosts -Value '$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression'
$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression

# oh-my-posh
oh-my-posh --init --shell pwsh --config ~/.dotfiles/.config/OhMyPosh/mytheme.omp.json | Invoke-Expression

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

Set-Alias -Name la -Value "Get-ChildItem"
Set-Alias -Name l -Value "ls"

Function ClsAndLs {Clear-Host; Get-ChildItem;}
Set-Alias -Name cl -Value ClsAndLs

Function Set-Location-My {Set-Location -Path ~/my; Clear-Host; Get-ChildItem;}
Function Set-Location-MySrc {Set-Location -Path ~/my/src; Clear-Host; Get-ChildItem;}
Function Set-Location-MyDev {Set-Location -Path ~/my/dev; Clear-Host; Get-ChildItem;}
Function Set-Location-Coding {Set-Location -Path ~/my/dev/CodingProblemsPython; Clear-Host; Get-ChildItem;}
Function Set-Location-CodingCS {Set-Location -Path ~/my/dev/CodingProblemsCSharp; Clear-Host; Get-ChildItem;}
Function Set-Location-MyScripts {Set-Location -Path ~/.dotfiles/MyScripts_mac; Clear-Host; Get-ChildItem;}
Function Set-Location-MyCompares {Set-Location -Path ~/my/compares; Clear-Host; Get-ChildItem;}
Function Set-Location-MySettings {Set-Location -Path ~/my/settings; Clear-Host; Get-ChildItem;}
Function Set-Location-MyNotes {Set-Location -Path ~/my/notes; Clear-Host; Get-ChildItem;}
Function Set-Location-MyWorkNotes {Set-Location -Path ~/my/notes-for-work; Clear-Host; Get-ChildItem;}

Function Set-Location-ReezeApp {Set-Location -Path ~/my/reeze-app; Clear-Host; Get-ChildItem;}
Function Set-Location-ReezeAppDevTools {Set-Location -Path ~/my/reeze-app/dev-tools; Clear-Host; Get-ChildItem;}
Function Set-Location-ReezeAppOne {Set-Location -Path ~/my/reeze-app/reeze-app-one; Clear-Host; Get-ChildItem;}
Function Set-Location-ReezeAppWeb {Set-Location -Path ~/my/reeze-app/reeze-app-web; Clear-Host; Get-ChildItem;}
Function Set-Location-ReezeAppMobile {Set-Location -Path ~/my/reeze-app/reeze-app-mobile; Clear-Host; Get-ChildItem;}

Function Set-Location-Ssh {Set-Location -Path ~/.ssh; Clear-Host; Get-ChildItem;}
Function Set-Location-DotFiles {Set-Location -Path ~/.dotfiles; Clear-Host; Get-ChildItem;}
Function Set-Location-UserSecrets {Set-Location -Path ~\AppData\Roaming\Microsoft\UserSecrets; Clear-Host; Get-ChildItem;}
Function Set-Location-PSReadLineHistory {Set-Location -Path ~/.local/share/powershell/PSReadLine; Clear-Host; Get-ChildItem;}

Function Set-Location-nvim {Set-Location -Path ~/.dotfiles; Clear-Host; Get-ChildItem;} # todo
Function Set-Location-nvim-data {Set-Location -Path ~/.dotfiles; Clear-Host; Get-ChildItem;} # todo

Set-Alias -Name GoMy -Value Set-Location-My
Set-Alias -Name GoSrc -Value Set-Location-MySrc
Set-Alias -Name GoDev -Value Set-Location-MyDev

Set-Alias -Name GoCoding -Value Set-Location-Coding
Set-Alias -Name GoCodingCS -Value Set-Location-CodingCS

Set-Alias -Name GoScripts -Value Set-Location-MyScripts

Set-Alias -Name GoCompare -Value Set-Location-MyCompares
Set-Alias -Name GoCompares -Value Set-Location-MyCompares
Set-Alias -Name GoSettings -Value Set-Location-MySettings

Set-Alias -Name GoNote -Value Set-Location-MyNotes

Set-Alias -Name GoWorkNote -Value Set-Location-MyWorkNotes
Set-Alias -Name GoNoteWork -Value Set-Location-MyWorkNotes

Set-Alias -Name GoRA -Value Set-Location-ReezeApp
Set-Alias -Name GoRAT -Value Set-Location-ReezeAppDevTools
Set-Alias -Name GoRAO -Value Set-Location-ReezeAppOne
Set-Alias -Name GoRAW -Value Set-Location-ReezeAppWeb
Set-Alias -Name GoRAM -Value Set-Location-ReezeAppMobile

Set-Alias -Name GoSsh -Value Set-Location-Ssh

Set-Alias -Name GoPSReadLineHistory -Value Set-Location-PSReadLineHistory

Set-Alias -Name GoDot -Value Set-Location-DotFiles
Set-Alias -Name GoUserSecrets -Value Set-Location-UserSecrets

Set-Alias -Name GoNvim -Value Set-Location-nvim
Set-Alias -Name GoNvimData -Value Set-Location-nvim-data
