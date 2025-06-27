---
lab:
    title: 'Configure a semantic model in Power BI'
    module: 'Configure a semantic model in Power BI'
---

# Configure a semantic model in Power BI

## Lab story

In this lab, you'll commence developing the data model. It will involve creating relationships between tables, and then configuring table and column properties to improve the friendliness and usability of the data model. You'll also create hierarchies and quick measures.

In this lab, you learn how to:

- Create model relationships.
- Configure table and column properties.
- Create hierarchies.
- Create quick measures.
- Configure a many-to-many relationship.

**This lab should take approximately 45 minutes.**

## Get started

To complete this exercise, first open a web browser and enter the following URL to download the zip file:

`https://github.com/MicrosoftLearning/PL-300-Microsoft-Power-BI-Data-Analyst/raw/Main/Allfiles/Labs/03-configure-semantic-model/03-model-data.zip`

Extract the file to the **C:\Users\Student\Downloads\03-model-data** folder.

Open the **03-Starter-Sales Analysis.pbix** file.

> _**Note**: You can dismiss the sign-in by selecting **Cancel**. Close any other informational windows. Select **Apply Later**, if prompted to apply changes._

## Create model relationships

In this task, you'll create model relationships. The file was configured to not identify relationships between tables, which isn't the default setting, but is recommended to prevent extra work creating the correct relationships for your model.

> The labs use a shorthand notation to reference a field. It will look like this: `Product | Category`. In this example, `Product` is the table name and `Category` is the field name.

1. In Power BI Desktop, to view all table fields, in the **Data** pane, right-click an empty area, and then select **Expand All**.

1. To create a table visual, in the **Data** pane, from inside the `Product` table, check the `Category` field.

1. To add another column to the table, in the **Data** pane, check the `Sales | Sales` field.

1. Notice that the table visual lists four product categories, and that the sales value is the same for each, and the same for the total.

    ![Picture 1](Linked_image_Files/03-configure-semantic-model-table-no-relationship.png)

    > _The issue is that the table is based on fields from different tables. The expectation is that each product category displays the sales for that category. However, because there isn't a model relationship between these tables, the `Sales` table isn't filtered. You'll now add a relationship to propagate filters between the tables._

1. To switch to the model designer, at the left select the Model view icon.

    ![Picture 2](Linked_image_Files/03-configure-semantic-model-model-view.png)

1. On the **Home** ribbon, select **Manage Relationships**.

    ![Picture 3](Linked_image_Files/03-configure-semantic-model-manage-relationships.png)

1. In the **Manage Relationships** window, notice that no relationships are yet defined.

1. To create a relationship, select **+ New relationship**.

1. To configure a relationship from `Product` table to `Sales` table, in the **From table** dropdown list, select the `Product` table, and in the **To table** dropdown list, select the `Sales` table.

    ![Picture 4](Linked_image_Files/03-configure-semantic-model-create-relationships.png)

1. Notice the following properties were automatically configured:

    - **ProductKey columns in each table are selected**. _The columns were selected because they share the same name and data type. You may need to find matching columns with different names in real data._
    - **Cardinality type is One To Many (1:\*)**. _The cardinality was automatically detected, because Power BI understands that the `ProductKey` column from the `Product` table contains unique values. One-to-many relationships are the most common cardinality, and all relationship you create in this lab will be this type._
    - **Cross Filter Direction type is Single**. _Single filter direction means that filters propagate from the "one side" to the "many side". In this case, it means filters applied to the `Product` table will propagate to the `Sales` table, but not in the opposite direction._
    - **Make This Relationship Active is checked**. _Active relationships propagate filters. It's possible to mark a relationship as inactive so filters don't propagate. Inactive relationships can exist when there are multiple relationship paths between tables. In this case, model calculations can use special functions to activate them._

    ![Picture 5](Linked_image_Files/03-configure-semantic-model-new-relationship.png)

1. Select **Save**, notice in the **Manage Relationships** window that the new relationship is listed, and then select **Close**.

1. In the model diagram, notice there's now a connector between the two tables (you might choose to reposition the tables to see the relationship more clearly).

    ![Picture 6](Linked_image_Files/03-configure-semantic-model_image21.png)

    > _You can interpret many of the relationship properties by looking at the relationship line in the diagram:_
    >
    > - _Cardinality is represented by the **1** and **(\*)** indicators._
    > - _Filter direction is represented by the arrow head._
    > - _A solid line represents an active relationship; a dotted line represents an inactive relationship._
    >
    > Tip: If you hover the cursor over the relationship to highlight the related columns._

1. Switch to Report view, and then notice that the table visual updated to display different values for each product category.

    > _Filters applied to the `Product` table now propagate to the `Sales` table._

    ![Picture 7](Linked_image_Files/03-configure-semantic-model-table-with-relationship.png)

### Create additional relationships

There's an easier way to create a relationship. In the model diagram, you can drag and drop columns to create a new relationship.

1. To create a new relationship using a different technique, switch to Model view.

1. From the `Reseller` table, drag the `ResellerKey` column onto the `ResellerKey` column of the `Sales` table.

    > _**Important**: Sometime a column doesn't want to be dragged. If this situation arises, select a different column, and then select the column you intend to drag again, and then try again. Ensure that you see the new relationship added to the diagram._

    ![Picture 8](Linked_image_Files/03-configure-semantic-model-drag-relationship.png)

1. In the **New relationship** window, review the configuration, and then select **Save**.

1. Use the new technique to create the following two model relationships:

     - `Region | SalesTerritoryKey` to `Sales | SalesTerritoryKey`
     - `Salesperson | EmployeeKey` to `Sales | EmployeeKey`

1. In the diagram, arrange the tables so that the `Sales` table is positioned in the center of the diagram, and the related tables are arranged about it. Position the disconnected tables to the side.

    ![Picture 9](Linked_image_Files/03-configure-semantic-model-relationships-configured.png)

1. Save the Power BI Desktop file.

## Configure the Product table

In this task, you'll configure the `Product` table with a hierarchy and display folder.

1. Switch to Model view.

1. In the **Data** pane, if necessary, expand the `Product` table to reveal all fields.

1. In the `Product` table, right-click the `Category` column, and the select **Create hierarchy**.

    ![Picture 10](Linked_image_Files/03-configure-semantic-model-create-hierarchy.png)

1. In the **Properties** pane, in the **Name** box, replace the value with _Products_.

    ![Picture 11](Linked_image_Files/03-configure-semantic-model-create-hierarchy-rename.png)

1. Two add levels to the hierarchy, in the **Hierarchy** dropdown list, select **Subcategory** and then select **Product**, and then select **Apply Level Changes**.

    ![Picture 12](Linked_image_Files/03-configure-semantic-model-create-hierarchy-levels.png)

1. In the **Data** pane, notice the `Products` hierarchy. To reveal the hierarchy levels, expand it.

    ![Picture 13](Linked_image_Files/03-configure-semantic-model_image28.png)

1. To organize columns into a display folder, in the **Data** pane, first select the `Background Color Format` column.

1. While pressing the **Ctrl** key, select the `Font Color Format` column.

1. In the **Properties** pane, in the **Display Folder** box, enter _Formatting_.

    ![Picture 30](Linked_image_Files/03-configure-semantic-model_image30.png)

1. In the **Data** pane, notice that the two columns are now inside a folder.

    ![Picture 14](Linked_image_Files/03-configure-semantic-model_image29.png)

    > _Display folders are a great way to organize tables, especially for tables that comprise many fields. They're logical presentation only._

## Configure the Region table

In this task, you'll configure the `Region` table with a hierarchy and updated categories.

1. In the `Region` table, create a hierarchy named _Regions_, with the following three levels:

     - `Group`
     - `Country`
     - `Region`

1. Select the `Country` column (not the `Country` hierarchy level).

1. In the **Properties** pane, expand the **Advanced** section (located at the bottom of the pane), and then in the **Data Category** dropdown list, select **Country/Region**.

    ![Picture 15](Linked_image_Files/03-configure-semantic-model_image32.png)

    > _Data categorization can provide hints to the report designer. In this case, categorizing the column as country or region provides more accurate information to Power BI when it renders a map visualization._

## Configure the Reseller table

In this task, you'll configure the `Reseller` table to add a hierarchy and update data categories.

1. In the `Reseller` table, create a hierarchy named _Resellers_, with the following two levels:

     - `Business Type`
     - `Reseller`

1. Create a second hierarchy named _Geography_, with the following four levels:

     - `Country-Region`
     - `State-Province`
     - `City`
     - `Reseller`

1. Set the data category for the following columns (not within the hierarchy):

    - `Country-Region` to **Country/Region**
    - `State-Province` to **State or Province**
    - `City` to **City**

## Configure the Sales table

In this task, you'll configure the `Sales` table with updated descriptions, formatting, and summarization.

1. In the `Sales` table, select the `Cost` column.

1. In the **Properties** pane, in the **Description** box, enter: _Based on standard cost_

    > _Descriptions can be applied to tables, columns, hierarchies, or measures. In the **Data** pane, description text is revealed in a tooltip when a report author hovers their cursor over the field._

1. Select the `Quantity` column.

1. In the **Properties** pane, from inside the **Formatting** section, set the **Thousands Separator** property to _Yes_.

1. Select the `Unit Price` column.

1. In the **Properties** pane, from inside the **Formatting** section, set the **Decimal Places** property to _2_.

1. In the **Advanced** group (you may need to scroll down to locate it), in the **Summarize By** dropdown list, select **Average**.

    > _By default, numeric columns will summarize by summing values together. This default behavior isn't suitable for a column like `Unit Price`, which represents a rate. Setting the default summarization to average will produce a meaningful result._

## Bulk update properties

In this task, you'll update multiple columns using single bulk updates. You'll use this approach to hide columns, and format column values.

1. In the **Data** pane (or model diagram), select the `Product | ProductKey` column.

1. While pressing the **Ctrl** key, select the following 13 columns (spanning multiple tables):

     - `Region | SalesTerritoryKey`
     - `Reseller | ResellerKey`
     - `Sales | EmployeeKey`
     - `Sales | ProductKey`
     - `Sales | ResellerKey`
     - `Sales | SalesOrderNumber`
     - `Sales | SalesTerritoryKey`
     - `Salesperson | EmployeeID`
     - `Salesperson | EmployeeKey`
     - `Salesperson | UPN`
     - `SalespersonRegion | EmployeeKey`
     - `SalespersonRegion | SalesTerritoryKey`
     - `Targets | EmployeeID`

1. In the **Properties** pane, set the **Is Hidden** property to _Yes_.

    > _The columns were hidden because they're either used by relationships or will be used in row-level security configuration or calculation logic._
    >
    > _You'll use the `SalesOrderNumber` column in a calculation in the **Create DAX Calculations in Power BI Desktop** lab._

1. Multi-select the following three columns:

     - `Product | Standard Cost`
     - `Sales | Cost`
     - `Sales | Sales`

1. In the **Properties** pane, from inside the **Formatting** section, set the **Decimal Places** property to _0_ (zero).

## Explore the model interface

In this task you'll switch to Report view, review the data model interface, and configure the auto date/time setting.

1. Switch to Report view.

1. In the **Data** pane, notice the following:

     - Columns, hierarchies and their levels are fields, which can be used to configure report visuals.
     - Only fields relevant to report authoring are visible.
     - The `SalespersonRegion` table isn't visible—because all of its fields are hidden.
     - Spatial fields in the `Region` and `Reseller` table are adorned with a spatial icon.
     - Fields adorned with the sigma symbol (Ʃ) will summarize, by default.
     - A tooltip appears when hovering the cursor over the `Sales | Cost` field.

1. Expand the `Sales | OrderDate` field, and then notice that it reveals a `Date Hierarchy`. The `Targets | TargetMonth` field delivers a similar hierarchy.

    ![Picture 16](Linked_image_Files/03-configure-semantic-model_image40.png)

    > _**Important**: These hierarchies weren't created by you. They were created automatically as a default setting. There's a problem, however. The Adventure Works financial year commences on July 1 of each year. But, in these automatically created date hierarchies, the date hierarchy year commences on January 1 of each year._

1. To turn off the auto date/time setting, navigate to **File > Options and Settings > Options**.

1. In the **Options** window, on the **Current File** section, navigate to **Data Load > Time Intelligence**, and uncheck **Auto Date/Time**.

    ![Picture 17](Linked_image_Files/03-configure-semantic-model_image43.png)

1. In the **Data** pane, notice that the date hierarchies are no longer available.

## Create quick measures

In this task, you'll create two quick measures to calculate profit and profit margin. A quick measure creates the calculation formula for you. They're easy and fast to create for simple and common calculations.

1. In the **Data** pane, right-click the `Sales` table, and then select **New Quick Measure**.

    ![Picture 18](Linked_image_Files/03-configure-semantic-model_image46.png)

1. In the **Quick Measure** pane, in the **Select a Calculation** dropdown list, from inside the **Mathematical Operations** group, select **Subtraction**.

    ![Picture 19](Linked_image_Files/03-configure-semantic-model_image47.png)

1. From the **Data** pane, drag the `Sales | Sales` field into the **Base Value** well.

    ![Picture 20](Linked_image_Files/03-configure-semantic-model-quick-measure-add-sales-field.png)

1. Drag the `Sales | Cost` field into the **Value to Subtract** box.  

    ![Picture 21](Linked_image_Files/03-configure-semantic-model_image48.png)

1. Select **Add**.

1. In the **Data** pane, inside the `Sales` table, notice that new measure.

    > _Measures are indicated by the calculator icon._

    ![Picture 22](Linked_image_Files/03-configure-semantic-model_image50.png)

1. To rename the measure, right-click it, select **Rename**, then rename as _Profit_.

    > _Tip: To rename a field, you can also double-click it, or select it and press **F2**._

1. In the `Sales` table, add a second quick measure, based on the following requirements:

    > _**Important**: If the option to create a quick measure doesn't appear in the context menu, use the command located on the **Home** ribbon, from inside the **Calculations** group.

    - Use the **Division** mathematical operation.
    - Set the **Numerator** to the `Sales | Profit` field.
    - Set the **Denominator** to `Sales | Sales` field.
    - Rename the measure as _Profit Margin_.

1. Ensure the `Profit Margin` measure is selected, and then on the **Measure Tools** contextual ribbon, set the format to **Percentage**, with two decimal places.

    ![Picture 23](Linked_image_Files/03-configure-semantic-model_image54.png)

1. To test the two measures, first select the existing table visual on the page.

1. In the **Data** pane, check the `Profit` and `Profit Margin` measures to add them to the table.

    ![Picture 24](Linked_image_Files/03-configure-semantic-model_image55.png)

1. Select and drag the right guide to widen the table visual.

    ![Picture 25](Linked_image_Files/03-configure-semantic-model_image56.png)

1. Verify that the measures produce reasonable results that are correctly formatted.

    ![Picture 26](Linked_image_Files/03-configure-semantic-model_image57.png)

## Create a many-to-many relationship

In this task, you'll create a many-to-many relationship between the `Salesperson` table and the `Sales` table.

1. In Report view, select a blank area of the report page.

1. To create a new table visual, in the **Data** pane, check the following two fields:

     - `Salesperson | Salesperson`
     - `Sales | Sales`

    ![Picture 27](Linked_image_Files/03-configure-semantic-model_u_image9.png)

    > _The table visual displays sales made by each salesperson. However, there's another relationship between salespeople and sales. Some salespeople belong to one, two, or possibly more sales regions. In addition, sales regions can have multiple salespeople assigned to them._
    >
    > _From a performance management perspective, a salesperson's sales (based on their assigned territories) need to be analyzed and compared with sales targets. You'll create relationships to support this analysis in the next exercise._

1. Notice that _Michael Blythe_ has generated almost 9 million dollars of sales.

1. Switch to Model view, then drag the `SalespersonRegion` table to position it between the `Region` and `Salesperson` tables.

1. Use the drag-and-drop technique to create the following two model relationships:

    - `Salesperson | EmployeeKey` to `SalespersonRegion | EmployeeKey`
    - `Region | SalesTerritoryKey` to `SalespersonRegion | SalesTerritoryKey`

    > _The `SalespersonRegion` table can be considered to be a bridging table._

1. Switch to Report view, and then notice that the visual hasn't updated—the sales result for Michael Blythe hasn't changed.

1. Switch back to Model view, and then follow the relationship filter directions (arrowhead) from the `Salesperson` table.

    > _Consider that the `Salesperson` table filters the `Sales` table. It also filters the `SalespersonRegion` table, but it doesn't continue by propagating filters to the `Region` table (the arrowhead is pointing the wrong direction)._

    ![Picture 28](Linked_image_Files/03-configure-semantic-model_u_image11.png)

1. To edit the relationship between the `Region` and `SalespersonRegion` tables, double-click the relationship.

1. In the **Edit Relationship** window, in the **Cross Filter Direction** dropdown list, select _Both_.

1. Check the **Apply Security Filter in Both Directions** checkbox.

    ![Picture 29](Linked_image_Files/03-configure-semantic-model_u_image12.png)

1. Select **Save**.

1. Notice that the relationship has a double arrowhead now.

    ![Picture 30](Linked_image_Files/03-configure-semantic-model_u_image14.png)

1. Switch to Report view, and then notice that the sales values have still not changed.

    > _The issue now relates to the fact that there are two possible filter propagation paths between the `Salesperson` and `Sales` tables. This ambiguity is internally resolved, based on a "least number of tables" assessment. To be clear, you shouldn't design models with this type of ambiguity—the issue will be addressed in part later in this lab, and by the completion of the **Create DAX Calculations in Power BI Desktop** lab._

1. Switch to Model view.

1. To force filter propagation via the bridging table, edit (double-click) the relationship between the `Salesperson` and `Sales` tables.

1. In the **Edit Relationship** window, uncheck the **Make This Relationship Active** checkbox.

    ![Picture 31](Linked_image_Files/03-configure-semantic-model_u_image14a.png)

1. Select **Save**.

    > _Filter propagation will now follow the only active path._

1. In the model diagram, notice that the inactive relationship is represented by a dotted line.

    ![Picture 32](Linked_image_Files/03-configure-semantic-model_u_image17.png)

1. Switch to Report view, and then notice that the sales for Michael Blythe are now nearly 22 million dollars.

1. Notice also, that the sales for each salesperson—if added—would exceed the table total.

     > _It's a common observation of a many-to-many relationship due to the double, triple, etc. counting of regional sales results. Consider Brian Welcker, the second salesperson listed. His sales amount equals the total sales amount. It's the correct result due to the fact that he's the Director of Sales; his sales are measured by the sales of all regions._
     >
     > _While the many-to-many relationship is now working, it's now not possible to analyze sales made by a salesperson (because the relationship is inactive). You'll be able to reactivate the relationship when you introduce a calculated table that will allow analyzing sales made in the sales region(s) assigned to the salesperson (for performance analysis) in the **Create DAX Calculations in Power BI Desktop** lab._

1. Switch to Model view, and then in the model diagram, select the `Salesperson` table.

1. In the **Properties** pane, in the **Name** box, replace the text with _Salesperson (Performance)_.

    > _The renamed table now reflects its purpose: it's used to report and analyze the performance of salespeople based on the sales of their assigned sales regions._

## Relate the Targets table

In this task, you'll create a relationship to the `Targets` table.

1. Create a relationship from the `Salesperson (Performance) | EmployeeID` column and the `Targets | EmployeeID` column.

1. In Report view, add the `Targets | Target` field to the table visual.

1. Resize the table visual so all columns are visible.

    ![Picture 33](Linked_image_Files/03-configure-semantic-model_u_image19.png)

 > _It's now possible to visualize sales and targets—but for now take care for two reasons. First, there's no filter on a time period, and so targets also include future target amounts. Second, targets aren't additive, and so the total shouldn't be displayed. They can either be disabled by formatting the visual or removed by using calculation logic._

1. Save the Power BI Desktop file.

## Lab complete
