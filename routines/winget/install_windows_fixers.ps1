# Install programs that fix up Windows
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Open-Shell.Open-Shell-Menu
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "windows_fix" -Programs $Programs
