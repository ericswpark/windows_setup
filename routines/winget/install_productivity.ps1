# Install productivity programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Mozilla.Thunderbird
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "productivity" -Programs $Programs
