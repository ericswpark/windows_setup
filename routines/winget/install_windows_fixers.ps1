# Install programs that fix up Windows
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "windows_fix" -Programs $Programs

# Open-Shell needs to be installed separately as the interactive installer lets
# you uncheck the Shell Toolbar.
winget install --exact --interactive --id Open-Shell.Open-Shell-Menu