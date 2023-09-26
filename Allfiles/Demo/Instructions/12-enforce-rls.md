---
demo:
    title: 'Enforce Row-level security in Power BI'
    module: 'Deploy and manage Power BI service items'
---
# Enforce Row-level security in Power BI

## Add a security table to the model

1. In Power BI Desktop, open the Power Query Editor window.

1. Add a new query based on the `D:\Demo\Data\**ManagerCategory**.xlsx` file.

1. Use the **ManagerCategory** table in the file.

1. Remove the **Manager** column.

1. Split the **Category** column by the semicolon delimiter and split into rows (advanced options).

1. In the **Email** column, replace the value **<ty-johnston@tailspintoys.com>** with the recipient account (from the MySettings.txt file).

1. Point out that this user is able to see three product categories: **Collective pitch, Trainer, and Warbird**.

1. Close and apply the queries.

1. In Model view, create a relationship between the **ManagerCategory** and Product tables relating the **Category** column.

1. Set the cross filter direction to Single (**ManagerCategory** filters Product).

1. Hide the **ManagerCategory** table.

## Add a role

1. In Report view, open Manage Roles, and then create a role named **Manager**.

1. In the role, filter the **ManagerCategory** table Email address column as follows:

  ```dax
   [Email] = USERPRINCIPALNAME()
   ```

1. **Save**.

## Validate the role

1. Open View As, and then configure the following settings:

    - Other User: Check, then enter the recipient account.

    - Manager role: Check

1. Point out that the filter visual shows just three product categories.

1. Stop viewing the report using the view-as options.

1. Save the Power BI Desktop file.

1. Publish the Power BI Desktop file to the workspace, overwriting the dataset and report in the service.

1. Close Power BI Desktop.

## Configure dataset security

1. In the Power BI service for the instructor, from the Navigation pane, open the security page for the **Sales Analysis** dataset.

1. In the Members section, enter the recipient account (representing **Ty Johnston**).

1. Add and Save.

## Test row-level security in the app

1. In the Power BI service for the recipient, refresh the dashboard (left open from the previous demo).

1. In the **Profit Margin** dashboard tile, verify that only three product categories can be seen.
