$excludedScripts = @("install_all.ps1", "install_program.ps1")

$scripts = Get-ChildItem -Path $PSScriptRoot -Filter "install_*.ps1" | Where-Object {
    $_.Name -notin $excludeFiles
}

foreach ($script in $scripts) {
    Write-Host "Running $($script.Name)..."
    & "$PSScriptRoot\$($script.Name)"
}
