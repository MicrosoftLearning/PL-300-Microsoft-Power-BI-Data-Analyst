Write-Host -foreground green 'Updating database...';
Write-Host 'Adding sales data...';

Invoke-SqlCmd -Server DATA-AI -Database "TailspinToys2020-US" -Query "EXEC [dbo].[uspSales_LoadData];"

Write-Host 'Press any key to close...';
$z = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");