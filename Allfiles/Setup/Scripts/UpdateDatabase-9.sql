--Remove June 2020 sales
DELETE [dbo].[FactResellerSales] WHERE [OrderDate] >= '20200601';
UPDATE [dbo].[FactResellerSales] SET [ShipDate] = NULL WHERE [ShipDate] >= '20200601';

--Reset accounts
DECLARE @Input NVARCHAR(256) = N'michael-blythe@adventureworks.com';

DECLARE
	@Account NVARCHAR(100) = LEFT(@Input, CHARINDEX(N'@', @Input) - 1),
	@Tenant NVARCHAR(100) = RIGHT(@Input, LEN(@Input) - CHARINDEX(N'@', @Input));

UPDATE
	[dbo].[DimEmployee]
SET
	[EmailAddress] = CASE
		WHEN [EmployeeKey] = 281 THEN @Input
		WHEN [EmployeeKey] = 286 THEN N'pamela-ansman-wolfe@adventureworks.com'
		ELSE CONCAT(LEFT([EmailAddress], CHARINDEX(N'@', [EmailAddress])), @Tenant)
	END;