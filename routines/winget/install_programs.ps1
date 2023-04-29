# Common function shared to install all programs in an array
function installPrograms {
    param(
        [string]$Caller,
        [string[]]$Programs
    )

    Write-Host "Starting installation of $Caller programs..."
    foreach ($Program in $Programs) {
        Write-Host "{$Caller}: Installing $Program..."
        winget install --id $Program
    }
}