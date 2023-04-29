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
EclipseAdoptium.Temurin.17.JDK
Docker.DockerDesktop
Microsoft.WindowsTerminal
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
.\install_programs("developer", $Programs)