---
demo:
    title: 'Perform data analysis in Power BI'
    module: 'Perform data analysis in Power BI'
---
# Perform data analysis

## Add a group

1. Add another new page to the report named **Category Analysis**.

1. Copy, paste, and then sync the **Year slicer** from the **Profit Analysis** page to the new page.

1. Add a new group based on the **Product** table **Category** column.

1. Create a group based on the Trainer value.

1. Select the **Include Other Group** checkbox.

1. Add a matrix visual, and position and size it so it fills the page.

1. Configure the matrix visual as follows:

    - Rows: Product | Category (groups) and Product | Product

    - Values: Quantity, Sales, Profit, and Profit Margin from the Sales table

1. Expand both categories.

## Apply conditional formatting

1. In the matrix visual, apply background color conditional formatting to the **Profit Margin** field.

1. Select red for the minimum color, and green for the maximum color.

1. Point out the range of colors used to convey low-to-high profit margin values.

1. Save the Power BI Desktop file.

1. Publish the report to the newer workspace, overwriting when prompted.

1. In the Power BI service, open the **Sales Analysis** report, and interact with each of the report pages.

1. Leave the Power BI Desktop file open.
