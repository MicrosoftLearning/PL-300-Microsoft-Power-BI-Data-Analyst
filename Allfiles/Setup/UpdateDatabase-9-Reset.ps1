Write-Host -foreground green 'Resetting database to original state...';

Invoke-SqlCmd -Server localhost -Database "AdventureWorksDW2020" -InputFile "Scripts\UpdateDatabase-9.sql"

Write-Host 'Press any key to close...';
$z = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");