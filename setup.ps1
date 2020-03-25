# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Do not ask for script running permissions
choco feature enable -n allowGlobalConfirmation -y

# Install essentials
choco install googlechrome
choco install veracrypt
choco install vlc
choco install potplayer
choco install vscode
choco install atom
choco install 7zip
choco install notepadplusplus
choco install git
choco install nodejs
choco install putty
choco install python
choco install itunes
choco install thunderbird
choco install winscp
choco install firefox
choco install procexp

# Remove after graduating from school
choco install office365proplus
