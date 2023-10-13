# (Optional) Optimize model performance

## Review a DirectQuery model design

> **Note**: This demo uses a different Power BI Desktop file.

1. Open the D:\PL300\Demo\Resources\AW Sales Analysis.pbix file.

1. If prompted to connect to the data source, click Connect.

1. At the bottom-right corner, point out that the data model comprises DirectQuery tables.

1. Save the Power BI Desktop file to the D:\PL300\Demo\MySolution folder.

1. In Model view, introduce the model design, which includes two related tables.

1. In Report view, interact with the report by selecting different items in the Fiscal Year slicer.

1. Drill through on any month column to reveal order details.

1. Return to the Sales Summary page.

## Review query performance

1. On the View ribbon tab, show the Performance Analyzer pane.

1. Refresh the visuals, and then expand the slicer and Sales by Month visual.

1. Point out that they used DirectQuery mode (data was requested from the data source).

## Configure Dual storage tables

1. In Model view, select the Date table, and then select the storage mode to Dual.

1. When the data has imported, switch to Report view, and then in the Performance Analyzer pane, refresh the visuals.

1. Point out that the Date table is now queried from the model cache.

## Create aggregations

1. Open the Power Query Editor window, and in the Queries pane, duplicate the Reseller Sales query.

1. Rename the new query Reseller Sales Agg.

1. Apply a group by transformation, as follows:

    - Group by OrderDate.

    - New column: Sales, which is the sum of the SalesAmount column.

1. Close and apply the queries.

1. In Model view, set the storage mode for the Reseller Sales Agg table to Import.

1. Create a relationship from the Date table Date column to the Reseller Sales Agg table OrderDate column—ensure that the column cardinality is set to one-to-many, with the Date table on the one-side.

1. Manage aggregations on the Reseller Sales Agg table:

    - OrderDate: Group by the Reseller Sales table OrderDate column.

    - Sales: Sum the Reseller Sales table SalesAmount column.

1. Point out that the aggregation table is now hidden.

1. Switch to Report view, and in the Performance Analyzer pane, and then refresh the visuals.

1. Point out that the Sales by Month table is now queried from the model cache.

1. Drill through from any month, and point out that the details in the table are requested as DirectQuery from the data source.

1. Save the Power BI Desktop file.

1. Close Power BI Desktop.

> **Note**: You will not use this Power BI Desktop solution again.
