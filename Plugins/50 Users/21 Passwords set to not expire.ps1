# Start of Settings 
# End of Settings 

Get-ADUser -Filter {PasswordNeverExpires -eq $True -AND Enabled -eq $True} -Properties Description,AccountExpirationDate | Select Name, SAMAccountName, Description, AccountExpirationDate | Sort-Object Name

$Title = "Passwords that don't Expire"
$Header =  "[count] Passwords that don't Expire"
$Comments = "List accounts with non-expiring passwords"
$Display = "Table"
$Author = "Eric Shanks"
$Version = 1.0
$PluginCategory = "Active Directory"