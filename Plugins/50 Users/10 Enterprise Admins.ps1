# Start of Settings 
# End of Settings

Get-ADGroupMember -identity "Enterprise Admins" | select SAMAccountName, Name | Sort-Object SAMAccountName

$Title = "Enterprise Admins Group"
$Header =  "Enterprise Admins Group Members"
$Comments = "List Current Enterprise Admins"
$Display = "Table"
$Author = "Eric Shanks"
$Version = 1.0
$PluginCategory = "Active Directory" 