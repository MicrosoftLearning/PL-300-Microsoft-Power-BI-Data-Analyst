# Create reports

## Create a single-page report

1. Remove the matrix visual that was used to test and validate the model calculations.

1. Rename the report page as Sales Summary.

## Add a slicer

1. Add a slicer for the Date table Year column and position it at the top-left of the report page.

1. Use the formatting options to configure the slicer for single selection.

## Add various visuals

1. Add a line and stacked column chart to the page, and configure it as follows:

    - Shared axis: Date | Month

    - Columns values: Sales | Sales

    - Line values: Sales | Profit Margin

1. Use the slicer to filter the page by CY2019, and then CY2020.

1. In the line and stacked column chart, point out that there is no sales column for December 2020.

1. Configure the shared axis to “show items with no data”.

1. Point out that December 2020 is added to the axis, but there is no column of data.

1. Explain that sales data for December 2020 has not happened yet. *You will run a script in a later demo to load December 2020 sales.*

1. Add a funnel chart, and configure it as follows:

    - Group: Product | Category

    - Values: Sales | Profit Margin

1. Use the formatting options to select a contrasting data color.

1. Add a Q&A visual, and enter the following question: Total sales by product demographic

1. Save the Power BI Desktop file.

1. Leave the Power BI Desktop file open for a later demo.
