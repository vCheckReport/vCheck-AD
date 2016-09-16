# Start of Settings 
# End of Settings 

Get-ADDomainController -Filter * | Select-Object Name, Forest, Domain, @{Name="Roles";e={$_.OperationMasterRoles -join ","}} | Sort-Object Forest, Domain, Name

$Title = "Domain Controller Information"
$Author = "John Sneddon"
$PluginVersion = 1.0
$Header = "Domain Controller Information"
$Comments = "Domain controllers in domain, with FSMO roles"
$Display = "Table"
$PluginCategory = "ActiveDirectory"