DECLARE @Input NVARCHAR(100);

SET @Input = '$(INPUT)';

DECLARE
	@Account NVARCHAR(100) = CASE
		WHEN CHARINDEX(N'@', @Input) = 0 THEN @Input
		ELSE LEFT(@Input, CHARINDEX(N'@', @Input) - 1)
	END;

UPDATE
	[dbo].[DimEmployee]
SET
	[EmailAddress] = CONCAT(@Account, RIGHT([EmailAddress], LEN([EmailAddress]) - CHARINDEX(N'@', [EmailAddress]) + 1))
WHERE
	[EmployeeKey] = 286;
