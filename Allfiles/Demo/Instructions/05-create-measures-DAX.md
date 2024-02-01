# Create measures using dax in Power BI

> **Tip**: All calculations can be copied from the D:\Allfiles\Demo\Resources\Snippets-Demo-05.txt file.

## Create a calculated table

1. Create a calculated table by using the following expression:

```dax
Date = CALENDARAUTO()
```

1. Switch to Data view, and review the table, which comprises a single date column.

Create calculated columns

1. Add a calculated column to the Date table:

```dax
Year = "CY" & YEAR('Date'[Date])
```

1. Add an additional calculated column to the Date table:

```dax
Month = FORMAT('Date'[Date], "YYYY-MM")
```

1. In Model view, create a relationship by dragging the Date table Date column to the Sales table OrderDate column.

1. Hide the Sales table OrderDate column.

1. In the Date table, create the Calendar hierarchy, with Year and Month levels.

1. In Report view, mark the Date table as a date table using the Date column.

1. In the matrix visual, remove the Products hierarchy, and then replace it with the Calendar hierarchy.

1. Add a calculated column to the Sales table:

```dax
Cost = 'Sales'[Quantity] * RELATED('Product'[Cost])
```

1. Format the Cost column to two decimal places.

## Create a Quick Measure

1. Add a quick measure to the Sales table, subtracting the Cost column from Profit column.

1. Rename the measure as Profit.

1. Explain that the measure does not store data in the model.

Create regular measures

1. Add a measure to the Sales table:

```dax
Profit Margin = DIVIDE([Profit], SUM('Sales'[Sales]))
```

1. Format the Profit Margin column as a percentage.

1. Add another measure to the Sales table:

```dax
Sales YTD = TOTALYTD(SUM('Sales'[Sales]), 'Date'[Date])
```

1. Format the Sales YTD column to two decimal places.

## Validate the calculations with the matrix visual

1. Add the Cost, Profit, Profit Margin, and Sales YTD fields to the matrix visual.

1. Save the Power BI Desktop file.

1. Leave the Power BI Desktop file open for a later demo.
