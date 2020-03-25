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
choco install 7zip.install
