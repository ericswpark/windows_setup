# Install developer programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
ZedIndustries.Zed
Git.Git
Notepad++.Notepad++
OpenJS.NodeJS
PuTTY.PuTTY
JetBrains.Toolbox
EclipseAdoptium.Temurin.24.JDK
Microsoft.WindowsTerminal
Rustlang.Rustup
Bruno.Bruno
Python.Python.3.14
Oven-sh.Bun
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "developer" -Programs $Programs
