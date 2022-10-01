# oh-my-posh
oh-my-posh --init --shell pwsh --config c:\Users\myname\.dotfiles\.config\OhMyPosh\mytheme.omp.json | Invoke-Expression

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


Function Set-Location-Src {Set-Location -Path C:\MySrc}
Function Set-Location-MyDev {Set-Location -Path C:\MyDev}
Function Set-Location-Ssh {Set-Location -Path C:\Users\myname\.ssh}

Set-Alias -Name GoSrc -Value Set-Location-Src
Set-Alias -Name GoDev -Value Set-Location-MyDev
Set-Alias -Name GoSsh -Value Set-Location-Ssh
