# Start of Settings 
# End of Settings 

Get-ADForest | Select Name, ForestMode, @{Name="Domains";e={$_.Domains -join "<br />"}}

$Title = "Forest Information"
$Author = "John Sneddon"
$PluginVersion = 1.0
$Header = "Forest Information"
$Comments = ""
$Display = "Table"
$PluginCategory = "ActiveDirectory"