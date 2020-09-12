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

# EDIT THIS LINE IF YOU WANT TO CUSTOMIZE PACKAGES INSTALLED
$packages = 'firefox', 'tor-browser',
'veracrypt', '7zip.install', 'winscp', 'procexp',
'vlc', 'mpv.install', 'itunes',
'vscode', 'git.install', 'notepadplusplus.install', 'nodejs', 'putty.install', 'python3', 'jetbrainstoolbox', 'openjdk',
'slack', 'telegram',
'steam', 'minecraft', 'uplay', 'epicgameslauncher',
'blender'

ForEach($package in $packages) {
    choco install $package
}

Write-Output "Done! Enjoy your new Windows box."
