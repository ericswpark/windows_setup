# Install developer programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Microsoft.VisualStudioCode
Git.Git
Notepad++.Notepad++
OpenJS.NodeJS
PuTTY.PuTTY
JetBrains.Toolbox
EclipseAdoptium.Temurin.21.JDK
Microsoft.WindowsTerminal
Rustlang.Rustup
Bruno.Bruno
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "developer" -Programs $Programs
