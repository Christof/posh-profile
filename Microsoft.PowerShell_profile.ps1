Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

function Remove-Alias ([string] $AliasName) {
	while (Test-Path Alias:$AliasName) {
		Remove-Item Alias:$AliasName -Force 2> $null
	}
}

function Invoke-Git-Status {
    & git status
}

function Invoke-Git-Fetch {
    & git fetch
}

function Invoke-Git-Pull {
    & git fetch
}

function Invoke-Git-Push {
    & git push
}

function Invoke-Git-Add {
    & git add $args
}

function Invoke-Git-Commit {
    & git commit $args
}

function Invoke-Git-History {
    & git log  --graph --date=short --pretty=format:"%Cred%h%Creset %Cgreen%ad%Creset | %s %b%C(yellow)%d%Creset %C(bold blue)[%an]%Creset"
}

Remove-Alias gl
Remove-Alias gp
Remove-Alias gc

New-Alias g Invoke-Git-Status
New-Alias gf Invoke-Git-Fetch
New-Alias gl Invoke-Git-Pull
New-Alias gp Invoke-Git-Push
New-Alias ga Invoke-Git-Add
New-Alias gc Invoke-Git-Commit
New-Alias gh Invoke-Git-History


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
