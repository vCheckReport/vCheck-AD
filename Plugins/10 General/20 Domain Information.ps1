# Start of Settings 
# End of Settings 

Get-ADDomain | Select Name, NetBIOSName, DomainMode, DNSRoot, Forest, @{Name="ChildDomains";e={$_.ChildDomains -join "<br />"}}

$Title = "Domain Information"
$Author = "John Sneddon"
$PluginVersion = 1.0
$Header = "Domain Information"
$Comments = ""
$Display = "Table"
$PluginCategory = "ActiveDirectory"