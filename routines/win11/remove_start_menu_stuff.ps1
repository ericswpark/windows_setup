# Thanks to u/alex-eagle on Reddit for the original tip
# Find the comment here: https://www.reddit.com/r/Windows11/comments/132z05e/comment/ji9p89l/
# Warning: needs administrative privileges

# Check if the script has admin privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "This script needs to be run as an administrator."
    return
}

# Remove experience pack that has the Bing search
winget uninstall "windows web experience pack"