# Start of Settings 
# End of Settings

Get-ADGroupMember -identity "Domain Admins" | select SAMAccountName, Name | Sort-Object SAMAccountName

$Title = "Domain Admins Group"
$Header =  "Domain Admins Group Members"
$Comments = "List Current Domain Admins"
$Display = "Table"
$Author = "Eric Shanks"
$Version = 1.0
$PluginCategory = "Active Directory" 