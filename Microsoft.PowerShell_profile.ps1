Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

function git-status {
    & git 'status'
}

New-Alias g git-status

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
