[CmdletBinding()]
Param(
   [Parameter(Mandatory=$True)]
   [string]$PartnerAccount
);

$DBParams = @("Input=" + $PartnerAccount)

Write-Host -foreground green 'Updating database...';

Invoke-SqlCmd -Server localhost -Database "AdventureWorksDW2020" -InputFile "Scripts\UpdateDatabase-3.sql" -Variable $DBParams

Write-Host 'Press any key to close...';
$z = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");