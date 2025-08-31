# Install drivers
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Logitech.OptionsPlus
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "drivers" -Programs $Programs