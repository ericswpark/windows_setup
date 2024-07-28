# Install audio programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
ImageLine.FLStudio
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "audio" -Programs $Programs