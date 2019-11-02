# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Do not ask for script running permissioons
choco feature enable -n allowGlobalConfirmation

# Install essentials
choco install firefox
choco install veracrypt
choco install vlc
choco install potplayer
choco install vscode
