# Common function shared to install all programs in an array
function installPrograms {
    param(
        [string]$Caller,
        [string]$Programs
    )
	
	$ProgramsArray = $Programs -split [Environment]::NewLine

    Write-Host "Starting installation of $Caller programs..."
    foreach ($Program in $ProgramsArray) {
        Write-Host "{$Caller}: Installing $Program..."
        winget install --exact --id $Program
    }
}
