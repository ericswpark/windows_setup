# Install developer programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Microsoft.VisualStudioCode
Git.Git
Notepad++.Notepad++
OpenJS.NodeJS
PuTTY.PuTTY
Python.Python.3.11
JetBrains.Toolbox
EclipseAdoptium.Temurin.19.JDK
Microsoft.WindowsTerminal
Rustlang.Rustup
'@

. ".\install_programs.ps1"
installPrograms -Caller "developer" -Programs $Programs