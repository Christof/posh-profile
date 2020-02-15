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
    & git fetch $args
}

function Invoke-Git-Pull {
    & git fetch $args
}

function Invoke-Git-Push {
    & git push $args
}

function Invoke-Git-Push-Upstream {
    & git push -u origin HEAD $args
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

function Invoke-Git-Diff {
    & git diff $args
}

function Invoke-Git-Branch {
    & git branch $args
}

function Invoke-Git-Checkout {
    & git checkout $args
}

Remove-Alias gl
Remove-Alias gp
Remove-Alias gc

New-Alias g Invoke-Git-Status
New-Alias gf Invoke-Git-Fetch
New-Alias gl Invoke-Git-Pull
New-Alias gp Invoke-Git-Push
New-Alias gpu Invoke-Git-Push-Upstream
New-Alias ga Invoke-Git-Add
New-Alias gc Invoke-Git-Commit
New-Alias gh Invoke-Git-History
New-Alias gd Invoke-Git-Diff
New-Alias gb Invoke-Git-Branch
New-Alias gco Invoke-Git-Checkout


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
