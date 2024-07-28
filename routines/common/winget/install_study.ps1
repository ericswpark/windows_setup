# Install study programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Obsidian.Obsidian
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "study" -Programs $Programs