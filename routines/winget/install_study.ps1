# Install study programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Joplin.Joplin
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}