# Install chocolatey if not installed
$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Chocolatey is not installed, installing now..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else{
    Write-Output "Chocolatey is already installed, version $testchoco. Skipping installation..."
}

# Do not ask for script running permissions
choco feature enable -n allowGlobalConfirmation -y

# Install browsers
choco install googlechrome
choco install firefox
choco install tor-browser

# Install mail client
choco install thunderbird

# Install utilities
choco install veracrypt
choco install 7zip
choco install winscp
choco install procexp
choco install bitwarden

# NOTE - remove once subscription expires
# Install VPNs
choco install expressvpn

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
choco install putty.install
choco install python
choco install arduino
choco install jetbrainstoolbox

# Install social tools
choco install slack
choco install telegram

# IMPORTANT - Remove after graduating from school
# Install Office 365
choco install office365business

# Install games/launchers
choco install steam
choco install minecraft

# Install 3D tools
choco install blender
choco install sheepit-client
