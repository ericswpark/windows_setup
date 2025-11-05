# Install programs that fix up Windows
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "windows_fix" -Programs $Programs

# Open-Shell needs to be installed separately to remove the Shell Toolbar
winget install --exact --id Open-Shell.Open-Shell-Menu --override "ADDLOCAL=Update,OpenShell,StartMenu"
