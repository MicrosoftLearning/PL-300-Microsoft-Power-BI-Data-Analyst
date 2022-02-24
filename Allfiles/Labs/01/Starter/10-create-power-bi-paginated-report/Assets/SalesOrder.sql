SELECT
	[frs].[OrderDate]
	,[r].[ResellerAlternateKey] AS [ResellerID]
	,[r].[ResellerName] AS [Reseller]
	,[frs].[SalesOrderLineNumber] AS [Line]
	,[p].[EnglishProductName] AS [Product]
	,[frs].[OrderQuantity] AS [Quantity]
	,[frs].[UnitPrice]
	,([frs].[OrderQuantity] * [frs].[UnitPrice]) AS [Amount]
FROM
	[dbo].[FactResellerSales] AS [frs]
	INNER JOIN [dbo].[DimReseller] AS [r]
		ON [r].[ResellerKey] = [frs].[ResellerKey]
	INNER JOIN [dbo].[DimProduct] AS [p]
		ON [p].[ProductKey] = [frs].[ProductKey]
WHERE
	[frs].[SalesOrderNumber] = CONCAT(N'SO', @SalesOrderNumber)
ORDER BY
	[frs].[SalesOrderLineNumber];