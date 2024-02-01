# Clean, transform, and load data in Power BI

## Apply query transformations

1. First, apply transformations to the Product query.

1. Remove the RetailPrice, Photo, and Sales columns.

1. Change the data type of the Channels column to Whole Number.

1. Rename the following columns:

    - ProductSKU to SKU

    - ProductName to Product

    - ProductCategory to Category

    - ItemGroup to Item Group

    - KitType to Kit Type

1. Second, apply transformations to the Sales query.

1. Remove all columns, except:

    - OrderDate

    - ProductID

    - Quantity

    - UnitPrice

1. Change the data type of the UnitPrice column to Fixed Decimal Number.

1. Rename the UnitPrice column to Unit Price.

1. Multi-select the Quantity and Unit Price columns, and then add a new column based on their multiplication.

1. Rename the new column as Sales.

## Integrate queries

1. Create a new query using the Excel connector, connecting to the D:\Allfiles\Demo\Data\ProductCost.xlsx file.

1. Remove the Product column.

1. Change the data type of the ProductCost column to Fixed Decimal Number.

1. Select the Product query, and then merge with the ProductCost query, relating the SKU columns.

1. In the Privacy Levels window, set the privacy level for the D:\ to Organizational.

1. Expand the ProductCost column to include the ProductCost column (from the ProductCost query).

1. Rename the new column as Cost.

## Disable and load queries to the data model

1. In the Queries pane, disable the ProductCost query.

1. On the Home ribbon tab, click the Close & Apply icon.

1. In Power BI Desktop, point out the two tables in the Data pane.

1. Save the Power BI Desktop file.

1. Leave the Power BI Desktop file open for the next demo.
