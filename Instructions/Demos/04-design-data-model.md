---
demo:
    title: 'Design a data model in Power BI'
    module: 'Design a data model in Power BI'
---
# Design a data model in Power BI

## Review the model

1. In the Data pane, expand all tables to reveal all fields.

1. In the Sales table, point out the OrderDate hierarchy, which was created automatically.

1. Explain that a Date table will be created in the next demo.

1. In Model view, hover over the automatically-created relationship between the two tables.

1. Explain how filters will propagate from the Product table to the Sales table.

## Create a hierarchy

1. Create a hierarchy based on the Product table Category column.

1. Rename the hierarchy as Products.

1. Add the Product column as the second level.

## Set model properties

1. Hide both the ProductID columns.

1. Format the Quantity column to use the thousands separator.

1. Multi-select the Sales and Unit Price columns, and format them to use two decimal places.

## Validate the model design with a matrix visual

1. In Report view, add a matrix visual to the page, and then size it to fill the entire page.

1. Add the Products hierarchy to the rows, and then add the Quantity, Sales, and Unit Price fields.

1. Expand all levels of the Products hierarchy.

1. Point out that the Unit Price values are the sum of prices, which is not correct.

1. In the Data pane, select the Unit Price field, and configure its summarization to use Average.

1. Remove the Sum of Unit Price column from the matrix visual, and then add the Unit Price field back again.

1. Save the Power BI Desktop file.

1. Leave the Power BI Desktop file open for the next demo.
