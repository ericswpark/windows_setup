# Install browser programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

# Install Mozilla Firefox
winget install --id "Mozilla.Firefox"

# Install Tor Browser
# Note: because Tor Browser is "special", it installs itself as a portable executable.
#       Everything is contained within one folder created on the desktop folder, which
#       is ugly as sin. The worse problem is that this folder is then synced across if
#       you have Microsoft OneDrive installed. And the cherry on top is that winget
#       will forget you ever downloaded this browser and keep downloading it again,
#       and again, and again...
#       The only solution is to install it in local appdata, making sure to check for
#       the existence of the executable first so that we don't waste time trying to
#       grab a new copy.
$torbrowser_location = "$env:LOCALAPPDATA\Tor Browser"
$torbrowser_executable_location = "$torbrowser_location\Browser\firefox.exe"
if (-not(Test-Path -Path $torbrowser_location -PathType Leaf)) {
    Write-Host "Can't find Tor Browser in your local appdata. Installing now..."
    winget install -e -i --id=TorProject.TorBrowser --location=$torbrowser_location --source=winget --scope=user
} else {
    Write-Host "Tor Browser is already installed in your local appdata."
}

