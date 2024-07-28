# Install blog programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Hugo.Hugo.Extended
GoLang.Go
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "blog" -Programs $Programs