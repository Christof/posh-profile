Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

function Invoke-Git-Status {
    & git 'status'
}

function Invoke-Git-Fetch {
    & git 'fetch'
}

function Invoke-Git-Pull {
    & git 'fetch'
}

function Invoke-Git-Push {
    & git 'push'
}

New-Alias g Invoke-Git-Status
New-Alias gf Invoke-Git-Fetch
New-Alias gl Invoke-Git-Pull
New-Alias gp Invoke-Git-Push


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
