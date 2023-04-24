# Install encryption programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
IDRIX.VeraCrypt
Cryptomator.Cryptomator
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}