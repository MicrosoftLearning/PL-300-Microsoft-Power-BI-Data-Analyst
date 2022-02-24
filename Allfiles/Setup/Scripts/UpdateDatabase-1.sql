DECLARE @Input NVARCHAR(100);

SET @Input = '$(INPUT)';

DECLARE
	@Account NVARCHAR(100) = LEFT(@Input, CHARINDEX(N'@', @Input) - 1),
	@Tenant NVARCHAR(100) = RIGHT(@Input, LEN(@Input) - CHARINDEX(N'@', @Input))

UPDATE
	[dbo].[DimEmployee]
SET
	[EmailAddress] = CASE
		WHEN [EmployeeKey] = 281 THEN @Input
		ELSE CONCAT(LEFT([EmailAddress], CHARINDEX(N'@', [EmailAddress])), @Tenant)
	END;
