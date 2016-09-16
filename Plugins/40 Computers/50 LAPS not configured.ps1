# Start of Settings
# OU to search for computer objects
$OUBase = ""
# Exclude these OUs from report
$ExcludeOUs = ""
# End of Settings

if ($OUBase)
{
   # Filter out non-windows, Cluster objects, and OS older than 2003/XP
   Get-ADComputer -Filter {Enabled -eq $true} -SearchBase $OUBase -Properties CanonicalName, OperatingSystem, OperatingSystemVersion,"ms-Mcs-AdmPwd",servicePrincipalName |
      Where {$_."ms-Mcs-AdmPwd" -eq $null -and
         $_.OperatingSystem -match "Windows" -and
         -not ($_.servicePrincipalName -match "MSClusterVirtualServer") -and
         $_.OperatingSystemVersion -ge "5.1"} |
      Select-Object Name, @{Name="OU";e={($_.CanonicalName -split "/")[-2]}}, OperatingSystem |
      Where-Object {$_.OU -notmatch $ExcludeOUs} | Sort-Object Name
}
else
{
   Get-ADComputer -Filter {Enabled -eq $true} -Properties CanonicalName, OperatingSystem, OperatingSystemVersion,"ms-Mcs-AdmPwd",servicePrincipalName |
      Where {$_."ms-Mcs-AdmPwd" -eq $null -and
         $_.OperatingSystem -match "Windows" -and
         -not ($_.servicePrincipalName -match "MSClusterVirtualServer") -and
         $_.OperatingSystemVersion -ge "5.1"} |
      Select-Object Name, @{Name="OU";e={($_.CanonicalName -split "/")[-2]}}, OperatingSystem |
      Where-Object {$_.OU -notmatch $ExcludeOUs} | Sort-Object Name

}

$Title = "Computers not configured for LAPS"
$Author = "John Sneddon"
$PluginVersion = 1.0
$Header = "[count] Computers not configured for LAPS"
$Display = "Table"
$PluginCategory = "ActiveDirectory"

$Comments = "LAPS should be used to secure local administrator passwords."
if ($ExcludedOUs)
{
    $Comments += (" Excluded OUs: {0}" -f $ExcludeOUs)
}
