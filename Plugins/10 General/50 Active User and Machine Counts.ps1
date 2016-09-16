# Start of Settings 
# End of Settings

 New-Object PSObject -Property @{
    UserAccounts = (Get-ADUser -filter * | where{$_.enabled}).count
    ComputerAccounts = (Get-ADComputer -filter * | where{$_.enabled}).count
 }
 

$Title = "Active User and Machine Counts"
$Header =  "Active User and Machine Counts"
$Comments = "Count enabled Users and Machines in Active Directory"
$Display = "Table"
$Author = "Eric Shanks"
$Version = 1.0
$PluginCategory = "ActiveDirectory"