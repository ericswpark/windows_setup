# Windows 10 setup scripts

These are the scripts I use to set up a new Windows machine.

## IMPORTANT

Windows restricts running PowerShell scripts by default. To relax this policy, follow these steps:

1. Press the Windows key and the R key.
2. Type `powershell`
3. Press Ctrl and Shift and Enter. Answer the UAC prompt.
4. Type the following command:

	Set-ExecutionPolicy AllSigned

5. Press `y` and Enter to accept the changes.

## Quick installation

Copy and paste into PowerShell, and go!

	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ideaman924/windows_setup/master/setup.ps1'))
