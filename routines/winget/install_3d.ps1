# Install 3D programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
BlenderFoundation.Blender
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}