---
lab:
    title: 'Load Data in Power BI Desktop'
    module: 'Module 3 - Clean, Transform, and Load Data in Power BI'
---

# **Load Data in Power BI Desktop**

**The estimated time to complete the lab is 45 minutes**

In this lab you will commence apply transformations to each of the queries created in the previous lab. You will then apply the queries to load each as a table to the data model.

In this lab you learn how to:

- Apply various transformations

- Apply queries to load them to the data model

### **Lab story**

This lab is one of many in a series of labs that was designed as a complete story from data preparation to publication as reports and dashboards. You can complete the labs in any order. However, if you intend to work through multiple labs, for the first 10 labs, we suggest you do them in the following order:

1. Prepare Data in Power BI Desktop

2. **Load Data in Power BI Desktop**

3. Model Data in Power BI Desktop, Part 1

4. Model Data in Power BI Desktop, Part 2

5. Create DAX Calculations in Power BI Desktop, Part 1

6. Create DAX Calculations in Power BI Desktop, Part 2

7. Design a Report in Power BI Desktop, Part 1

8. Design a Report in Power BI Desktop, Part 2

9. Create a Power BI Dashboard

10. Create a Power BI Paginated Report

11. Perform Data Analysis in Power BI Desktop

12. Enforce Row-Level Security

## **Exercise 1: Load Data**

In this exercise you will apply transformations to each of the queries created in the previous lab.

### **Task 1: Get started**

In this task you will setup the environment for the lab.

*Important: If you are continuing on from the previous lab (and you completed that lab successfully), do not complete this task; instead, continue from the next task.*

1. To open the Power BI Desktop, on the taskbar, click the Microsoft Power BI Desktop shortcut.

    ![Picture 8](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image1.png)

1. To close the getting started window, at the top-left of the window, click **X**.

    ![Picture 7](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image2.png)

1. To open the starter Power BI Desktop file, click the **File** ribbon tab to open the backstage view.

1. Select **Open Report**.

	![Picture 10](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image3.png)

1. Click **Browse Reports**.

    ![Picture 11](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image4.png)

1. In the **Open** window, navigate to the **D:\DA100\Labs\02-load-data-with-power-query-in-power-bi-desktop\Starter** folder.

1. Select the **Sales Analysis** file.

1. Click **Open**.

	![Picture 12](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image5.png)

1. Close any informational windows that may open.

1. Notice the yellow warning message beneath the ribbon.

	*The message alerts you to the fact that the queries have not been applied to load as model tables. You’ll apply the queries later in this lab.*

1. To dismiss the warning message, at the right of the yellow warning message, click **X**.

	![Picture 13](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image6.png)

1. To create a copy of the file, click the **File** ribbon tab to open the backstage view.

1. Select **Save As**.

    ![Picture 18](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image7.png)

1. If prompted to apply changes, click **Apply Later**.

    ![Picture 22](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image8.png)

1. In the **Save As** window, navigate to the **D:\DA100\MySolution** folder.

1. Click **Save**.

    ![Picture 15](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image9.png)

1. To open the **Power Query Editor** window, on the **Home** ribbon tab, from inside the **Queries** group, click the **Transform Data** icon.

	![Picture 20](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image10.png)

### **Task 2: Configure the Salesperson query**

In this task you will configure the **Salesperson** query.

1. In the **Power Query Editor** window, in the **Queries** pane, select the **DimEmployee** query.

	![Picture 1](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image11.png)

2. To rename the query, in the **Query Settings** pane (located at the right), in the **Name** box, replace the text with **Salesperson**, and then press **Enter**.

	*The query name will determine the model table name. It’s recommended to define concise, yet friendly, names.*

3. In the **Queries** pane, verify that the query name has updated.

	![Picture 87](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image12.png)

	*You’ll now filter the query rows to retrieve only employees who are salespeople.*

4. To locate a specific column, on the **Home** ribbon tab, from inside the **Manage Columns** group, click the **Choose Columns** down-arrow, and then select **Go to Column**.

	![Picture 88](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image13.png)

	*Tip: This technique is useful when a query contains many columns. If there’s not too many columns, you can simply horizontally scroll to locate the column of interest.*

5. In the **Go to Column** window, to order the list by column name, click the **AZ** sort button, and then select **Name**.

	![Picture 94](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image14.png)

6. Select the **SalesPersonFlag** column, and then click **OK**.

7. To filter the query, in the **SalesPersonFlag** column header, click the down-arrow, and then uncheck **FALSE**.

	![Picture 95](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image15.png)

8. Click **OK**.

	![Picture 96](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image16.png)

9. In the **Query Settings** pane, in the **Applied Steps** list, notice the addition of the **Filtered Rows** step.

	![Picture 98](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image17.png)

	*Each transformation you create results in additional step logic. It’s possible to edit or delete steps. It’s also possible to select a step to preview the query results at that stage of the query transformation.*

10. To remove columns, on the **Home** ribbon tab, from inside the **Manage Columns** group, click the **Choose Columns** icon.

	![Picture 99](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image18.png)

11. In the **Choose Columns** window, to uncheck all columns, uncheck the **(Select All Columns)** item.

	![Picture 102](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image19.png)

12. To include columns, check the following six columns:

	- EmployeeKey

	- EmployeeNationalIDAlternateKey

	- FirstName

	- LastName

	- Title

	- EmailAddress

13. Click **OK**.

	![Picture 104](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image20.png)

14. In the **Applied Steps** list, notice the addition of another query step.

	![Picture 112](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image21.png)

15. To create a single name column, first select the **FirstName** column header.

16. While pressing the **Ctrl** key, select the **LastName** column.

	![Picture 116](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image22.png)

17. Right-click either of the select column headers, and then in the context menu, select **Merge Columns**.

	![Picture 117](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image23.png)

	*Many common transformations can be applied by right-clicking the column header, and then choosing them from the context menu. Note, however, more transformations are available in the ribbon.*

18. In the **Merge Columns** window, in the **Separator** dropdown list, select **Space**.

19. In the **New Column Name** box, replace the text with **Salesperson**.

	![Picture 119](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image24.png)

20. Click **OK**.

	![Picture 5636](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image25.png)

21. To rename the **EmployeeNationalIDAlternateKey** column, double-click the **EmployeeNationalIDAlternateKey** column header.

22. Replace the text with **EmployeeID**, and then press **Enter**.

	*Important: When instructed to rename columns, it’s important that you rename them exactly as described.*

23. Use the previous steps to rename the **EmailAddress** column to **UPN**.

	*UPN is an acronym for User Principal Name. The values in this column will be used when you configure row-level security in the **Model Data in Power BI Desktop, Part 2** lab.*

24. At the bottom-left, in the status bar, verify that the query has five columns and 18 rows.

	![Picture 5638](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image26.png)

	*Important: It’s important that you do not proceed if your query does not produce the correct result—it won’t be possible to complete later labs. If the query columns or rows don’t match, refer back to the steps in this task to fix any problems.*

### **Task 3: Configure the SalespersonRegion query**

In this task you will configure the **SalespersonRegion** query.

1. In the **Queries** pane, select the **DimEmployeeSalesTerritory** query.

	![Picture 5639](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image27.png)

2. In the **Query Settings** pane, rename the query to **SalespersonRegion**.

3. To remove the last two columns, first select the **DimEmployee** column header.

4. While pressing the **Ctrl** key, select the **DimSalesTerritory** column header.

5. Right-click either of the select column headers, and then in the context menu, select **Remove Columns**.

	![Picture 5640](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image28.png)

6. In the status bar, verify that the query has two columns and 39 rows.

	![Picture 5641](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image29.png)

### **Task 4: Configure the Product query**

In this task you will configure the **Product** query.

*Important: When detailed instructions have already been provided, the lab steps will now provide more concise instructions. If you need the detailed instructions, you can refer back to the steps of previous tasks.*

1. Select the **DimProduct** query.

	![Picture 5643](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image30.png)

2. Rename the query to **Product**.

3. Locate the **FinishedGoodsFlag** column, and then filter the column to retrieve products that are finished goods (i.e. TRUE).

4. Remove all columns, except the following:

	- ProductKey

	- EnglishProductName

	- StandardCost

	- Color

	- DimProductSubcategory

5. Notice that the **DimProductSubcategory** column represents a related table (it contains **Value** links).

6. In the **DimProductSubcategory** column header, at the right of the column name, click the expand button.

	![Picture 5644](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image31.png)

7. To uncheck all columns, uncheck the **(Select All Columns)** item.

8. Check the **EnglishProductSubcategoryName** and **DimProductCategory** columns.

	![Picture 5646](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image32.png)

	*By selecting these two columns, a transformation will be applied to join to the **DimProductSubcategory** table, and then include these columns. The **DimProductCategory** column is, in fact, another related table in the data source.*

9. Uncheck the **Use Original Column Name as Prefix** checkbox.

	![Picture 5647](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image33.png)

	*Query column names must always be unique. If left checked, this checkbox would prefix each column with the expanded column name (in this case **DimProductSubcategory**). Because it’s known that the selected column names don’t collide with column names in the **Product** query, the option is deselected.*

10. Click **OK**.

	![Picture 5648](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image34.png)

11. Notice that the transformation resulted in the addition of two columns, and that the **DimProductSubcategory** column has been removed.

12. Expand the **DimProductCategory** column, and then introduce only the **EnglishProductCategoryName** column.

13. Rename the following four columns:

	- **EnglishProductName** to **Product**

	- **StandardCost** to **Standard Cost** (include a space)

	- **EnglishProductSubcategoryName** to **Subcategory**

	- **EnglishProductCategoryName** to **Category**

14. In the status bar, verify that the query has six columns and 397 rows.

	![Picture 5651](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image35.png)

### **Task 5: Configure the Reseller query**

In this task you will configure the **Reseller** query.

1. Select the **DimReseller** query.

	![Picture 5653](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image36.png)

2. Rename the query to **Reseller**.

3. Remove all columns, except the following:

	- ResellerKey

	- BusinessType

	- ResellerName

	- DimGeography

4. Expand the **DimGeography** column, to include only the following three columns:

	- City

	- StateProvinceName

	- EnglishCountryRegionName

	![Picture 5656](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image37.png)

5. In the **Business Type** column header, click the down-arrow, and then review the distinct column values, and notice the incorrect spelling of warehouse.

	![Picture 2](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image38.png)

  
‎ 

6. Right-click the **Business Type** column header, and then select **Replace Values**.

	![Picture 4](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image39.png)

7. In the **Replace Values** window, configure the following values:

	- In the **Value to Find** box, enter **Ware House**

	- In the **Replace With** box, enter **Warehouse**

	![Picture 5](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image40.png)

8. Click **OK**.

	![Picture 6](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image41.png)

9. Rename the following four columns:

	- **BusinessType** to **Business Type** (include a space)

	- **ResellerName** to **Reseller**

	- **StateProvinceName** to **State-Province**

	- **EnglishCountryRegionName** to **Country-Region**

10. In the status bar, verify that the query has six columns and 701 rows.

	![Picture 5657](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image42.png)

### **Task 6: Configure the Region query**

In this task you will configure the **Region** query.

1. Select the **DimSalesTerritory** query.

	![Picture 5659](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image43.png)

2. Rename the query to **Region**.

3. Apply a filter to the **SalesTerritoryAlternateKey** column to remove the value 0 (zero).

	![Picture 5660](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image44.png)

4. Remove all columns, except the following:

	- SalesTerritoryKey

	- SalesTerritoryRegion

	- SalesTerritoryCountry

	- SalesTerritoryGroup

5. Rename the following three columns:

	- **SalesTerritoryRegion** to **Region**

	- **SalesTerritoryCountry** to **Country**

	- **SalesTerritoryGroup** to **Group**

6. In the status bar, verify that the query has four columns and 10 rows.

	![Picture 5661](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image45.png)

### **Task 7: Configure the Sales query**

In this task you will configure the **Sales** query.

1. Select the **FactResellerSales** query.

	![Picture 5663](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image46.png)

2. Rename the query to **Sales**.

3. Remove all columns, except the following:

	- SalesOrderNumber

	- OrderDate

	- ProductKey

	- ResellerKey

	- EmployeeKey

	- SalesTerritoryKey

	- OrderQuantity

	- UnitPrice

	- TotalProductCost

	- SalesAmount

	- DimProduct

	*You may recall in the **Prepare Data in Power BI Desktop** lab that a small percentage of **FactResellerSales** rows had missing **TotalProductCost** values. The **DimProduct** column has been included to retrieve the product standard cost column to assist fixing the missing values.*

4. Expand the **DimProduct** column, uncheck all columns, and then include only the **StandardCost** column.

5. To create a custom column, on the **Add Column** ribbon tab, from inside the **General** group, click **Custom Column**.

	![Picture 5664](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image47.png)

6. In the **Custom Column** window, in the **New Column Name** box, replace the text with **Cost**.

	![Picture 5665](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image48.png)

7. In the **Custom Column Formula** box, enter the following expression (after the equals symbol):

8. For your convenience, you can copy the expression from the **D:\DA100\Labs\02-load-data-with-power-query-in-power-bi-desktop\Assets\Snippets.txt** file.


   **Power Query**
   ```
   if [TotalProductCost] = null then [OrderQuantity] * [StandardCost] else [TotalProductCost]
   ```


*This expression tests if the **TotalProductCost** value is missing. If it is, produces a value by multiplying the **OrderQuantity** value by the **StandardCost** value; otherwise, it uses the existing **TotalProductCost** value.*

9. Click **OK**.

	![Picture 5666](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image49.png)

10. Remove the following two columns:

	- TotalProductCost

	- StandardCost

11. Rename the following three columns:

	- **OrderQuantity** to **Quantity**

	- **UnitPrice** to **Unit Price** (include a space)

	- **SalesAmount** to **Sales**

12. To modify the column data type, in the **Quantity** column header, at the left of the column name, click the **1.2** icon, and then select **Whole Number**.

	![Picture 5667](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image50.png)

	*Configuring the correct data type is important. When the column contains numeric value, it’s also important to choose the correct type if you expect to perform mathematic calculations.*

13. Modify the following three column data types to **Fixed Decimal Number**.

	- Unit Price

	- Sales

	- Cost

	![Picture 5668](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image51.png)

	*The fixed decimal number data type stores values with full precision, and so requires more storage space that decimal number. It’s important to use the fixed decimal number type for financial values, or rates (like exchange rates).*

14. In the status bar, verify that the query has 10 columns and 999+ rows.

	![Picture 5669](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image52.png)

	*A maximum of 1000 rows will be loaded as preview data for each query.*

### **Task 8: Configure the Targets query**

In this task you will configure the **Targets** query.

1. Select the **ResellerSalesTargets** query.

	![Picture 5672](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image53.png)

2. Rename the query to **Targets**.

3. To unpivot the 12 month columns (**M01**-**M12**), first multi-select the **Year** and **EmployeeID** column headers.

	![Picture 5673](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image54.png)

4. Right-click either of the select column headers, and then in the context menu, select **Unpivot Other Columns**.

	![Picture 5674](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image55.png)

5. Notice that the column names now appear in the **Attribute** column, and the values appear in the **Value** column.

6. Apply a filter to the **Value** column to remove hyphen (-) values.

	*You may recall that the hyphen character was used in the source CSV file to represent zero (0).*

7. Rename the following two columns:

	- **Attribute** to **MonthNumber** (there is no space between the two words—it will be removed later)

	- **Value** to **Target**

	*You’ll now apply transformations to produce a date column. The date will be derived from the **Year** and **MonthNumber** columns. You’ll create the column by using the **Columns From Examples** feature.*

8. To prepare the **MonthNumber** column values, right-click the **MonthNumber** column header, and then select **Replace Values**.

	![Picture 5676](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image56.png)

9. In the **Replace Values** window, in the **Value To Find** box, enter **M**.

	![Picture 5677](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image57.png)

10. Click **OK**.

11. Modify the **MonthNumber** column data type to **Whole Number**.

	![Picture 5678](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image58.png)

12. On the **Add Column** ribbon tab, from inside the **General** group, click The **Column From Examples** icon.

	![Picture 5675](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image59.png)

13. Notice that the first row is for year **2017** and month number **7**.

14. In the **Column1** column, in the first grid cell, commence entering **7/1/2017**, and then press **Enter**.

	*The virtual machine uses US regional settings, so this date is in fact July 1, 2017.*

15. Notice that the grid cells update with predicted values.

	*The feature has accurately predicted that you are combining values from the **Year** and **MonthNumber** columns.*

16. Notice also the formula presented above the query grid.

	![Picture 5679](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image60.png)

17. To rename the new column, double-click the **Merged** column header.

18. Rename the column as **TargetMonth**.

	![Picture 5680](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image61.png)

19. To add the new column, click **OK**.

	![Picture 5681](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image62.png)

20. Remove the following columns:

	- Year

	- MonthNumber

21. Modify the following column data types:

	- **Target** as fixed decimal number

	- **TargetMonth** as date

22. To multiply the **Target** values by 1000, select the **Target** column header, and then on the **Transform** ribbon tab, from inside the **Number Column** group, click **Standard**, and then select **Multiply**.

	*You may recall that the target values were stored as thousands.*

	![Picture 5682](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image63.png)

23. In the **Multiply** window, in the **Value** box, enter **1000**.

	![Picture 5683](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image64.png)

24. Click **OK**.

	![Picture 5684](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image65.png)

25. In the status bar, verify that the query has three columns and 809 rows.

	![Picture 5685](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image66.png)

### **Task 9: Configure the ColorFormats query**

In this task you will configure the **ColorFormats** query.

1. Select the **ColorFormats** query.

	![Picture 5687](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image67.png)

2. Notice that the first row contains the column names.

3. On the **Home** ribbon tab, from inside the **Transform** group, click **Use First Row as Headers**.

	![Picture 5688](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image68.png)

4. In the status bar, verify that the query has three columns and 10 rows.

	![Picture 5689](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image69.png)

### **Task 10: Update the Product query**

In this task you will update the **Product** query by merging the **ColorFormats** query.

1. Select the **Product** query.

	![Picture 5690](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image70.png)

2. To merge the **ColorFormats** query, on the **Home** ribbon tab, from inside the **Combine** group, click **Merge Queries**.

	![Picture 5654](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image71.png)

	*Merging queries allows integrating data, in this case from different data sources (SQL Server and a CSV file).*

3. In the **Merge** window, in the **Product** query grid, select the **Color** column header.

	![Picture 5655](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image72.png)

4. Beneath the **Product** query grid, in the dropdown list, select the **ColorFormats** query.

	![Picture 21](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image73.png)

5. In the **ColorFormats** query grid, select the **Color** column header.

6. When the **Privacy Levels** window opens, for each of the two data sources, in the corresponding dropdown list, select **Organizational**.

	![Picture 5691](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image74.png)

	*Privacy levels can be configured for data source to determine whether data can be shared between sources. Setting each data source as **Organizational** allows them to share data, if necessary. Note that Private data sources can never be shared with other data sources. It doesn’t mean that Private data cannot be shared; it means that the Power Query engine cannot share data between the sources.*

7. Click **Save**.

	![Picture 5692](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image75.png)

8. In the **Merge** window, use the default **Join Kind** - maintaining the selection of Left Outer and click **OK**.

	![Picture 5693](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image76.png)

9. Expand the **ColorFormats** column to include the following two columns:

	- Background Color Format

	- Font Color Format

	![Picture 5694](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image77.png)

10. In the status bar, verify that the query now has eight columns and 397 rows.

	![Picture 5695](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image78.png)

### **Task 11: Update the ColorFormats query**

In this task you will update the **ColorFormats** to disable its load.

1. Select the **ColorFormats** query.

	![Picture 321](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image79.png)

2. In the **Query Settings** pane, click the **All Properties** link.

	![Picture 322](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image80.png)

3. In the **Query Properties** window, uncheck the **Enable Load To Report** checkbox.

	![Picture 323](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image81.png)

	Disabling the load means it will not load as a table to the data model. This is done because the query was merged with the **Product** query, which is enabled to load to the data model.

4. Click **OK**.

	![Picture 324](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image82.png)

### **Task 12: Finish up**

In this task you will complete the lab.

1. Verify that you have eight queries, correctly named as follows:

	- Salesperson

	- SalespersonRegion

	- Product

	- Reseller

	- Region

	- Sales

	- Targets

	- ColorFormats (which will not load to the data model)

2. To load the data model, on the **File** backstage view, select **Close &amp; Apply**.

	![Picture 326](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image83.png)

	*All load-enabled queries are now loaded to the data model.*

3. In the **Fields** pane (located at the right), notice the seven tables loaded to the data model.

	![Picture 3](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image84.png)

4. Save the Power BI Desktop file.

5. If you intend to start the next lab, leave Power BI Desktop open.

	*You’ll configure data model tables and relationships in the **Model Data in Power BI Desktop, Part 1** lab.*
