# Warning: interactive
# Warning: requires a reboot to apply fully

$NewName = Read-Host -Prompt 'Enter new computer name'
Rename-Computer -NewName $NewName