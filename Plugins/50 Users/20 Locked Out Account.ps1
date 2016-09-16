# Start of Settings 
# End of Settings 

Search-ADAccount -LockedOut -UsersOnly | Where-Object { $_.Enabled } | Select-Object Name, SamAccountName, LastLogonDate | Sort-Object Name

$Title = "Locked Out Accounts"
$Header =  "[count] Locked Out Accounts"
$Comments = "Account currently locked out"
$Display = "Table"
$Author = "Eric Shanks"
$Version = 1.0
$PluginCategory = "ActiveDirectory" 