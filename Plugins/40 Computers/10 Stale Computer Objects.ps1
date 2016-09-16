# Start of Settings 
# Number of days that is considered stale
$StaleDays = 14
# OU to search for computer objects
$OUBase = ""
# End of Settings 


$date = (Get-Date).AddDays(-$StaleDays); 

if ($OUBase)
{
    Get-ADComputer -filter { Enabled -eq $true -and LastLogonDate -lt $date } -SearchBase $OUBase -Properties CanonicalName,LastLogonDate | Select-Object Name, @{Name="OU";e={($_.CanonicalName -split "/")[-2]}}, lastlogondate
}
else
{
    Get-ADComputer -filter { Enabled -eq $true -and LastLogonDate -lt $date } -Properties CanonicalName,LastLogonDate | Select-Object Name, @{Name="OU";e={($_.CanonicalName -split "/")[-2]}}, lastlogondate
}

$Title = "Stale Computer Objects"
$Author = "John Sneddon"
$PluginVersion = 1.0
$Header = ("[count] Computers not updated in past {0} days" -f $StaleDays)
$Comments = "These computers have not contected the domain recently"
$Display = "Table"
$PluginCategory = "ActiveDirectory"