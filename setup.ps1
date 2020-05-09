# Install chocolatey if not installed
if(Test-Path -Path "$env:ProgramData\Chocolatey") {
    $chocoversion = powershell choco -v
    Write-Output "Chocolatey is already installed, version $chocoversion. Skipping installation..."
} else {
    Write-Output "Chocolatey is not installed, installing now..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Do not ask for script running permissions
choco feature enable -n allowGlobalConfirmation -y

# Install browsers
choco install googlechrome firefox tor-browser

# Install utilities
choco install veracrypt 7zip winscp procexp bitwarden

# Install media
choco install vlc potplayer itunes plex

# Install developer tools
choco install vscode notepadplusplus git nodejs putty.install python jetbrainstoolbox

# Install social tools
choco install slack telegram

# Install games/launchers
choco install steam minecraft

# Install 3D tools
choco install blender sheepit-client
