# If this profile fails to load, run:
# Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

# Don't record space-prefixed commands
Set-PSReadLineOption -AddToHistoryHandler {
    param([string]$line)
    return $line.Length -gt 3 -and $line[0] -ne ' ' -and $line[0] -ne ';'
}

# Disable/enable history wrappers
function Disable-PSReadLineHistory {
    $global:PSReadLineOldHistorySaveStyle = (Get-PSReadLineOption).HistorySaveStyle
    Set-PSReadLineOption -HistorySaveStyle SaveNothing
}

function Enable-PSReadLineHistory {
    # Only change the history style if we previously saved it in `Disable-PSReadLineHistory`
    if (Test-Path variable:PSReadLineOldHistorySaveStyle) {
        Set-PSReadLineOption -HistorySaveStyle $global:PSReadLineOldHistorySaveStyle
    }
}

function Open-RandomPhoto {
	$formats = @("*.jpg","*.jpeg","*.png")
	$dir = (get-location).path
	$target = gci "$dir\*" -include $formats -recurse | Get-Random -Count 1
	Write-Output "Opening $target..."
	Invoke-Item $target
}

function Incognito-Mode {
	Disable-PSReadLineHistory
	Write-Output "Done! This session will not be recorded into history."
	Write-Output "Issue uncognito to record into history."
}

function Incognito-Mode-Disable {
	Enable-PSReadLineHistory
	Write-Output "Done! This session will now be recorded into history."
}

Set-Alias -Name incognito -Value Incognito-Mode
Set-Alias -Name uncognito -Value Incognito-Mode-Disable
Set-Alias -Name random_photo -Value Open-RandomPhoto


if (-not (Test-Path $profile)) {
  New-Item -ItemType File -Path (Split-Path $profile) -Force -Name (Split-Path $profile -Leaf)
}

$profileEntry = 'Remove-Item Alias:ni -Force -ErrorAction Ignore'
$profileContent = Get-Content $profile
if ($profileContent -notcontains $profileEntry) {
  ("`n" + $profileEntry) | Out-File $profile -Append -Force -Encoding UTF8
}
Remove-Item Alias:ni -Force -ErrorAction Ignore


function git-Root-Directory {
	cd "$(git rev-parse --show-toplevel)"
}

Set-Alias -Name gitcd -Value git-Root-Directory
