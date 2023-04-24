# Install authentication programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Bitwarden.Bitwarden
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}