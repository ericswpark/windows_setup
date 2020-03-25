# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Do not ask for script running permissions
choco feature enable -n allowGlobalConfirmation -y

# Install browsers
choco install googlechrome
choco install firefox

# Install mail client
choco install thunderbird

# Install utilities
choco install veracrypt
choco install 7zip
choco install winscp
choco install procexp

# Install video players
choco install vlc
choco install potplayer

# Install media players
choco install itunes

# Install developer tools
choco install vscode
choco install atom
choco install notepadplusplus
choco install git
choco install nodejs
choco install putty
choco install python

# IMPORTANT - Remove after graduating from school
# Install Office 365 ProPlus (with license)
choco install office365proplus


