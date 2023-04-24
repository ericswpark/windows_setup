# Install Logitech Options+ driver
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Logitech.OptionsPlus
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}