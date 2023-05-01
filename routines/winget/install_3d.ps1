# Install 3D programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
BlenderFoundation.Blender
'@

. ".\install_programs.ps1"
installPrograms -Caller "3d" -Programs $Programs