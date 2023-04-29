# Install 3D programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
BlenderFoundation.Blender
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
.\install_programs("3d", $Programs)