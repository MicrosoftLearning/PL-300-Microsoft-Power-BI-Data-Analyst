Write-Host -foreground green 'Updating database...';
Write-Host 'Removing supplementary sales data...';

Invoke-SqlCmd -Server DATA-AI -Database "TailspinToys2020-US" -Query "EXEC [dbo].[uspSales_LoadData_Undo];"

Write-Host 'Press any key to close...';
$z = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");