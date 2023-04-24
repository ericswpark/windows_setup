# Install browser programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Mozilla.Firefox
TorProject.TorBrowser
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}