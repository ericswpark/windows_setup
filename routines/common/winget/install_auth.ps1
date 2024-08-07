# Install authentication programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Bitwarden.Bitwarden
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "auth" -Programs $Programs