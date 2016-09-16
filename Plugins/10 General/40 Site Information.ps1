# Start of Settings 
# End of Settings 

Get-ADReplicationSite -filter * | Select Name, @{Name="Subnets";e={(Get-ADReplicationSubnet -filter {Site -eq $_} | Select -ExpandProperty Name) -join "<br />"}}

$Title = "Domain Site Information"
$Author = "John Sneddon"
$PluginVersion = 1.0
$Header = "Domain Site Information"
$Comments = ""
$Display = "Table"
$PluginCategory = "ActiveDirectory"