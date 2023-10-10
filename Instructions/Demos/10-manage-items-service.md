---
demo:
    title: 'Manage files and datasets in Power BI'
    module: 'Deploy and manage Power BI service items'
---
# Manage files and datasets in Power BI

## Prepare for gateway data refresh

> **Note** the following steps are not needed when using the data gateway in personal mode. You can proceed directly to the next objective (setup the gateway).

1. In Power BI Desktop, open the Power Query Editor window, and select the **ProductCost** query.

1. Edit the Source step, and then modify the file path to use the file share, as follows:

    `\\DATA-AI\Data\ProductCost.xlsx`

1. Close and apply the Power Query Editor window.

1. Save the Power BI Desktop file.

1. Publish the Power BI Desktop file to the workspace, overwriting the dataset and report in the service.

## Setup the gateway (personal mode)

1. In the Power BI service for the instructor, reload (F5) the dataset settings page.

1. Expand the Gateway Connection section and point out that no gateway is installed.

1. Use the download dropdown list (located at the top-right), and select Data Gateway.

1. In the new web page, download the personal mode gateway.

1. Once downloaded, open the downloaded file.

1. Complete the gateway setup by using the credentials of the instructor account.

1. Once setup, return to and reload the dataset settings page.

1. Assign the personal gateway, and the edit the credentials for the two data sources.

1. For both data sources, set the authentication method to **WindowsWithoutImpersonation**, and set the privacy level to **Organizational**.

1. Optionally, expand the **Scheduled Refresh** section, and show how to configure a recurring schedule.

## Refresh the dataset

1. Before refreshing the dataset, open the **Sales Monitoring** dashboard.

1. Edit the details of the Sales, Profit Margin tile to display the last refresh time.

1. Right-click the `D:\PL300\Demo\Resources\UpdateDatabase-LoadAdditionalSales.ps1` file, and then run with PowerShell. *This script will load December 2020 sales data into the database.*

1. In the Power BI service for the instructor, from the Navigation pane, refresh the **Sales Analysis** dataset.

1. When the refresh completes, point out how the dashboard tile **December 2020** column appears, and that the refresh time is **NOW**.
