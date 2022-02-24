---
lab:
    title: 'Create a Power BI Paginated Report'
    module: 'Module 9 - Create Paginated Reports in Power BI'
---


# **Create a Power BI Paginated Report**

**The estimated time to complete the lab is 45 minutes**

In this lab you will use Power BI Report Builder to develop a pixel-perfect paginated report layout that sources data from the **AdventureWorksDW2020** SQL Server database. You will create a data source and dataset, and also configure a report parameter. The report layout will allow data to be rendered over multiple pages, and to be exported in PDF and other formats.

The final report will look like the following:

![Image of the completed Sales Order Report. It includes a title, subtitle details, the company logo, and a table of sales order lines.](Linked_image_Files/11-create-power-bi-paginated-report_image1.png)

In this lab you learn how to:

- Use Power BI Report Builder

- Design a multi-page report layout

- Define a data source

- Define a dataset

- Create a report parameter

- Export a report to PDF

### **Lab story**

This lab is one of many in a series of labs that was designed as a complete story from data preparation to publication as reports and dashboards. You can complete the labs in any order. However, if you intend to work through multiple labs, for the first 10 labs, we suggest you do them in the following order:

1. Prepare Data in Power BI Desktop

2. Load Data in Power BI Desktop

3. Model Data in Power BI Desktop, Part 1

4. Model Data in Power BI Desktop, Part 2

5. Create DAX Calculations in Power BI Desktop, Part 1

6. Create DAX Calculations in Power BI Desktop, Part 2

7. Design a Report in Power BI Desktop, Part 1

8. Design a Report in Power BI Desktop, Part 2

9. Create a Power BI Dashboard

10. **Create a Power BI Paginated Report**

11. Perform Data Analysis in Power BI Desktop

12. Enforce Row-Level Security

## **Exercise 1: Get Started**

In this exercise you will open Power BI Report Builder to create and then save a report.

### **Task 1: Create the report**

In this task you will open Power BI Report Builder to create and then save a report.

1. To open Power BI Report Builder, on the taskbar, click the **Power BI Report Builder** shortcut.

 	![Picture 32](Linked_image_Files/11-create-power-bi-paginated-report_image2.png)
	
	*Note: if prompted to update to the latest version of Power BI Report Builder, click **Cancel** and proceed to step 2.

1. In the Power BI Report Builder window, to create a new report, in the **Getting Started** window, click **Blank Report**.

 	![Picture 5](Linked_image_Files/11-create-power-bi-paginated-report_image3.png)

1. To save the report, click the **File** tab (located at the top-left), and then select **Save**.

 	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML32fddfaf.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image4.png)

1. In the **Save As Report** window, navigate to the **D:\DA100\MySolution** folder.

1. In the **Name** box, enter **Sales Order Report**.

1. Click **Save**.

## **Exercise 2: Design the Report Layout**

In this exercise you will design the report layout, and explore the final report design.

### **Task 1: Configure the report header**

In this task you will configure the report header.

1. In the report designer, notice the default report layout, which consists of a body region and a report footer region.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML330700e8.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image5.png)

	*The body contains a single textbox ready for a report title, and the report footer contains a single textbox describing the report execution time.*

	*The default design will render the report title once, in the body, on the first rendered page. However, you will now modify the report design by adding a report header region, and by moving the report title textbox into this region. This way, the report title will repeat on every page. You will also add an image of the company logo.*

1. To add a report header region, on the **Insert** ribbon tab, from inside the **Header &amp; Footer** group, click **Header**, and then select **Add Header**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML33038ea4.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image6.png)

1. In the report designer, notice that a report header region has been added to the report layout.

1. To select the body textbox, click the “Click to add title” textbox.

1. To move the textbox, click the four-headed arrow icon, and then drag it into the header region to then drop it at the very top-left of the report header region.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML330925bc.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image7.png)

1. To modify the report title textbox text, click inside the text box, and then enter: **Sales Order Report**

	*To resize the textbox, you will first open the **Properties** pane. For fine-grained control of location and size properties, you will need use the **Properties** pane.*

1. On the **View** ribbon tab, from inside the **Show/Hide** group, check **Properties**.

	![Picture 27](Linked_image_Files/11-create-power-bi-paginated-report_image8.png)

1. To select the report title textbox, first click an area outside the textbox, and then click the textbox again.

	*The textbox is selected when you see the border of the textbox highlighted and resizing handles (small circles) appear on the border.*

1. In the **Properties** pane (located at the right), scroll down the list to locate the **Position** group.

	![Picture 28](Linked_image_Files/11-create-power-bi-paginated-report_image9.png)

	*The **Position** group allows setting exact values for the location and size of report items.*

	*It’s important that you enter the values as directed in this lab. Pixel-perfect layout is required to achieve the page rendering at the end of the lab.*

1. Within the **Position** group, expand the **Location** group, and ensure that the **Left** and **Top** properties are each set to **0in**.

	*The location and size units are in inches because the regional settings of the lab virtual machine is set to the United States. If your region uses metric measurements, centimeters would be the default unit.*

1. Within the **Position** group, expand the **Size** group, and then set the **Width** property to **4**.

	![Picture 35](Linked_image_Files/11-create-power-bi-paginated-report_image10.png)

1. To insert an image, on the **Insert** ribbon tab, from inside the **Report Items** group, click **Image**.

	![Picture 31](Linked_image_Files/11-create-power-bi-paginated-report_image11.png)

1. To add the image to the report design, click inside the report header region, to the right of the report title textbox.

1. In the **Image Properties** window, to import from an image file, click **Import**.

	![Picture 33](Linked_image_Files/11-create-power-bi-paginated-report_image12.png)

1. In the **Open** window, navigate to the **D:\DA100\Resources** folder, and then select the **AdventureWorksLogo.jpg** file.

1. Click **Open**.

1. In the **Image Properties** window, click **OK**.

1. In the report designer, notice that the image was added, and is selected.

1. To position and resize the image, in the **Properties** pane, configure the following properties:

	- **Position \| Location \| Left** : 5

	- **Position \| Location \| Top** : 0

	- **Position \| Size \| Width** : 1

	- **Position \| Size \| Height** : 1

1. To resize the report header region, first select the region by clicking a blank area of the region.

1. In the **Properties** pane, set the **General \| Height** property to **1**.

1. Verify that the report header region contains a single textbox and image, and looks like the following:

	![Picture 34](Linked_image_Files/11-create-power-bi-paginated-report_image13.png)

1. To save the report, on the **File** tab, click **Save**.

	*Tip: You can also click the disk icon located at the top-left.*

	![Picture 106](Linked_image_Files/11-create-power-bi-paginated-report_image14.png)

	*You are now ready to configure the report to retrieve a database query result.*

### **Task 2: Retrieve data**

In this task you will create a data source and dataset to retrieve a query result from the **AdventureWorksDW2020** SQL Server database.

1. In the **Report Data** pane (located at the left), right-click the **Data Sources** folder, and then select **Add Data Source**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML3367f3d0.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image15.png)

	*It is possible to retrieve data from cloud or on-premises databases, or a Power BI dataset.*

2. In the **Data Source Properties** window, in the **Name** box, replace the text with **AdventureWorksDW2020**.

3. In the **Select Connection Type** dropdown list, change the connection type from SQL Server Analysis Services to **Microsoft SQL Server**.

4. To build the connection string, click **Build**.

	![Picture 1](Linked_image_Files/11-create-power-bi-paginated-report_image16.png)

5. In the **Connection Properties** window, in the **Server Name** box, enter **localhost**.

	*In the labs, you will connect to the SQL Server database by using **localhost**. This isn’t a recommended practice, however, when creating your own solutions. It’s because gateway data sources cannot resolve **localhost**.*

6. In the **Select or Enter a Database Name** dropdown list, select the **AdventureWorksDW2020**.

7. Click **OK**.

8. In the **Data Source Properties** window, click **OK**.

9. In the **Report Data** pane, notice the addition of the **AdventureWorksDW2020** data source.

	![Picture 2](Linked_image_Files/11-create-power-bi-paginated-report_image17.png)

10. To create a dataset, in the **Report Data** pane, right-click the **AdventureWorksDW2020** data source, and then select **Add Dataset**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML336e389c.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image18.png)

	*A report dataset is a different in purpose and structure from a Power BI dataset.*

11. In the **Dataset Properties** window, in the **Name** box, replace the text with **SalesOrder**.

12. To import a pre-defined query, click **Import**.

	![Picture 40](Linked_image_Files/11-create-power-bi-paginated-report_image19.png)

13. In the **Import Query** window, navigate to the **D:\DA100\Labs\10-create-power-bi-paginated-report\Assets** folder, and then select the **SalesOrder.sql** file.

14. Click **Open**.

15. In the **Query** box, review the query, and be sure to scroll down to the bottom of the query text.

	*It is not important that you understand the details of the query statement. It has been designed to retrieve sales order line details. The WHERE clause includes a predicate to restrict the query result to a single sales order. The ORDER BY clause ensures the rows are returned by line number order.*

16. Notice the use of **@SalesOrderNumber** in the WHERE clause, which represents a query parameter.

	![Picture 3](Linked_image_Files/11-create-power-bi-paginated-report_image20.png)

	*A query parameter is a placeholder for a value that will be passed in at query execution time. You will configure a report parameter to prompt the report user for a single sales order number which will then be passed to the query parameter.*

17. Click **OK**.

18. In the **Report Data** pane, notice the addition of the **SalesOrder** dataset and its fields.

	![Picture 44](Linked_image_Files/11-create-power-bi-paginated-report_image21.png)

	*Fields are used to configure data regions in the report layout. They were derived from the dataset query columns.*

19. Save the report.

### **Task 3: Configure the report parameter**

In this task you will configure the report parameter with a default value.

1. In the **Report Data** pane, expand the **Parameters** folder to reveal the **SalesOrderNumber** report parameter.

	![Picture 107](Linked_image_Files/11-create-power-bi-paginated-report_image22.png)

	*The **SalesOrderNumber** report parameter was added automatically when the dataset was created. This is because the dataset query included the **@SalesOrderNumber** query parameter.*

2. To edit the report parameter, right-click the **SalesOrderNumber** report parameter, and then select **Parameter Properties**.

	![Picture 46](Linked_image_Files/11-create-power-bi-paginated-report_image23.png)

3. In the **Report Parameter Properties** window, at the left, select the **Default Values** pages.

	![Picture 48](Linked_image_Files/11-create-power-bi-paginated-report_image24.png)

4. Select the **Specify Values** option.

	![Picture 49](Linked_image_Files/11-create-power-bi-paginated-report_image25.png)

5. To add a default value, click **Add**.

6. In the **Value** dropdown list, replace the text with **43659**.

	![Picture 50](Linked_image_Files/11-create-power-bi-paginated-report_image26.png)

	*Sales order 43659 is the value you will initially use to test the report design.*

7. Click **OK**.

8. Save the report.

	*You will now complete the report header region design by adding textboxes to describe the sales order.*

### **Task 4: Finalize the report header layout**

In this task you will finalize the report header region design by adding textboxes.

1. To add a textbox to the report header region, on the **Insert** ribbon tab, from inside the **Report Items** group, click **Text Box**.

	![Picture 51](Linked_image_Files/11-create-power-bi-paginated-report_image27.png)

2. Click inside the report header region, directly beneath the report title textbox.

3. Inside the textbox, enter **Sales Order:** followed by a space.

4. To insert a place holder, immediately after the space just entered, right-click and then select **Create Placeholder**.

	![Picture 109](Linked_image_Files/11-create-power-bi-paginated-report_image28.png)

5. In the **Placeholder Properties** window, at the right of the **Value** dropdown list, click the **fx** button.

	![Picture 53](Linked_image_Files/11-create-power-bi-paginated-report_image29.png)

	*The **fx** button allows entering a custom expression. This expression will be used to return the sales order number.*

6. In the **Expression** window, in the **Category** list, select **Parameters**.

	![Picture 54](Linked_image_Files/11-create-power-bi-paginated-report_image30.png)

7. In the **Values** list, double-click the **SalesOrderNumber** parameter.

8. In the expression box, notice that a programmatic reference to the **SalesOrderNumber** report parameter was added.

	![Picture 55](Linked_image_Files/11-create-power-bi-paginated-report_image31.png)

9. Click **OK**.

10. In the **Placeholder Properties** window, click **OK**.

11. Click a blank area of the report header region, and then select the new textbox.

12. In the **Properties** pane, configure the following position properties:

	- **Position \| Location \| Left** : 0

	- **Position \| Location \| Top** : 0.5

	- **Position \| Size \| Width** : 4

	- **Position \| Size \| Height** : 0.25

13. To format part of the textbox text, inside the new textbox, select only the **Sales Order:** text.

	![Picture 110](Linked_image_Files/11-create-power-bi-paginated-report_image32.png)

14. On the **Home** ribbon tab, from inside the **Font** group, click the **Bold** command.

	![Picture 56](Linked_image_Files/11-create-power-bi-paginated-report_image33.png)

15. Add another textbox to the report header region, and then enter the text **Reseller:** followed by a space.

	*Tip: You can also add a textbox by right-clicking the canvas, and then selected **Insert \| Text Box**.*

16. After the space, insert a placeholder, and then set the value of the placeholder to use an expression.

17. In the **Expression** window, in the **Category** list, select **Datasets**.

	![Picture 58](Linked_image_Files/11-create-power-bi-paginated-report_image34.png)

18. Base the expression value on **First(Reseller)** value.

19. In the **Properties** pane, configure the following position properties:

	- **Position \| Location \| Left** : 0

	- **Position \| Location \| Top** : 0.75

	- **Position \| Size \| Width** : 4

	- **Position \| Size \| Height** : 0.25

20. Format the **Reseller:** text in bold.

21. Add a third (and last) textbox to the report header region, and then enter the text **Order Date:** followed by a space.

22. After the space, insert a placeholder, and set the value of the placeholder to use an expression based on the **Datasets** category, **First(OrderDate)** value.

	![Picture 111](Linked_image_Files/11-create-power-bi-paginated-report_image35.png)

23. To format the date value, in the **Placeholder Properties** window, select the **Number** page.

	![Picture 61](Linked_image_Files/11-create-power-bi-paginated-report_image36.png)

24. In the **Category** list, select **Date**.

	![Picture 62](Linked_image_Files/11-create-power-bi-paginated-report_image37.png)

25. In the **Type** list, select a suitable date format type.

26. In the **Placeholder Properties** window , click **OK**.

27. In the **Properties** pane, configure the following position properties:

	- **Position \| Location \| Left** : 0

	- **Position \| Location \| Top** : 1

	- **Position \| Size \| Width** : 4

	- **Position \| Size \| Height** : 0.25

28. Format the **Order Date:** text in bold.

29. Finally, click a blank area of the report header region.

30. In the **Properties** pane, set the **Height** property to **1.5**.

31. Verify that the report header region looks like the following:

	![Picture 112](Linked_image_Files/11-create-power-bi-paginated-report_image38.png)

32. Save the report.

33. To preview the report, on the **Home** ribbon tab, from inside the **Views** group, click **Run**.

	![Picture 60](Linked_image_Files/11-create-power-bi-paginated-report_image39.png)

	*Running the report renders the report in HTML. As the only report parameter has a default value, the report will run automatically.*

34. Verify that the rendered report looks like the following:

	![Picture 4](Linked_image_Files/11-create-power-bi-paginated-report_image40.png)

35. To return to design view, on the **Run** ribbon tab, from inside the **Views** group, click **Design**.

	![Picture 64](Linked_image_Files/11-create-power-bi-paginated-report_image41.png)

	*You will now add a table to the report body to display a formatted layout of the sales order lines.*

### **Task 5: Add a table data region**

In this task you will add a table data region to the report body.

1. On the **Insert** ribbon tab, from inside the **Data Regions** group, click **Table**, and then select **Insert Table**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML33b54257.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image42.png)

2. To add the table, click a blank area inside the report body.

3. In the **Properties** pane, configure the following position properties:

	- **Position \| Location \| Left** : 0

	- **Position \| Location \| Top** : 0

	*The table will display five columns. By default, the table template includes only three columns.*

4. To add a column to the table, right-click inside any cell of the last column, and then select **Insert Column \| Right**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML33b96fbd.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image43.png)

5. Repeat the last step to add a second new column.

6. Hover the cursor over the cell in the second row of the first column to reveal the field picker icon.

	![Picture 67](Linked_image_Files/11-create-power-bi-paginated-report_image44.png)

7. Click the field picker icon, and then select the **Line** field.

	![Picture 113](Linked_image_Files/11-create-power-bi-paginated-report_image45.png)

8. Notice that the table now includes a text value in the first row (header), and a field reference in the detail row.

	![Picture 68](Linked_image_Files/11-create-power-bi-paginated-report_image46.png)

9. Add fields to the next four columns, in order, as follows:

	- Product

	- Quantity

	- UnitPrice

	- Amount

10. Verify that the table design looks like the following:

	![Picture 69](Linked_image_Files/11-create-power-bi-paginated-report_image47.png)

11. Save the report.

12. Preview the report.

	![Picture 12](Linked_image_Files/11-create-power-bi-paginated-report_image48.png)

	![Picture 11](Linked_image_Files/11-create-power-bi-paginated-report_image49.png)

	*The table includes a header and 12 sales order line rows. There are many improvements that can be made by formatting the table layout.*

	*In the next task you will:*

	- Format the table header by using a background color and bold font style

	- Modify column widths to remove redundant space and to prevent long text values from wrapping

	- Left-justify the first column values

	- Right-justify the last three column values

	- Format currency values using a currency symbol (for USD)

	- Add and format a total row for the table

### **Task 6: Format the table data region**

In this task you will format the table data region.

1. Return to design view.

2. Click any cell in the table to reveal the gray cell guides.

	![Picture 73](Linked_image_Files/11-create-power-bi-paginated-report_image50.png)

	*The cell guides are there to help you configure entire rows or columns.*

3. To format the table header, click the header row guide.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML3426409c.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image51.png)

	*Selecting a row or a column guide selects all cells in the row or column. Each cell is in fact a textbox. Formatting single textbox—or a multi-selection of textboxes—can then be achieved by using the **Properties** pane, or the ribbon commands.*

4. In the **Properties** pane (or the ribbon), configure the following properties:

	- **Fill \| BackgroundColor** : DarkGreen (tip: hover the cursor over each color to reveal its name)

	- **Font \| Color** : White

	- **Font \| Font \| FontWeight** : Bold

5. Select the first column guide.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML342b0187.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image52.png)

6. In the **Properties** pane, set the **Position \| Size \| Width** property to **0.5**.

7. Set the width of the second column to **2.5**.

8. While pressing the **Ctrl** key, multi-select the last three column header textboxes (**Quantity**, **Unit Price** and **Amount**).

9. In the **Properties** pane (or ribbon), set the **Alignment \| TextAlign** property to **Right**.

10. Set the **Line** detail textbox to left align.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML342fbe1d.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image53.png)

11. On the **Home** ribbon tab, from inside the **Number** group, set the last two detail (not header) textboxes (**UnitPrice** and **Amount**) to format with a currency symbol.

	![Picture 77](Linked_image_Files/11-create-power-bi-paginated-report_image54.png)

12. To add a total row to the table, right-click the **Quantity** detail textbox, and then select **Add Total**.

	![Picture 78](Linked_image_Files/11-create-power-bi-paginated-report_image55.png)

13. Notice that a new row, which represents the table footer, has been added, and that the expression will evaluate the sum of **Quantity** values.

14. Repeat the last step to add a total for the **Amount** detail textbox.

15. In the first cell of the table footer row, enter the word **Total**.

16. Format all textboxes in the footer row to format as bold.

17. Verify that the table design looks like the following:

	![Picture 13](Linked_image_Files/11-create-power-bi-paginated-report_image56.png)

18. To remove any trailing space after the table, hover the cursor over the dashed line between the report body and report footer region, and then drag upwards to touch the bottom of the table.

	![Picture 84](Linked_image_Files/11-create-power-bi-paginated-report_image57.png)

19. Save the report

20. Preview the report.

21. Verify that the rendered report looks like the following:

	![Picture 6](Linked_image_Files/11-create-power-bi-paginated-report_image58.png)

22. In the **Sales Order Number** parameter box, replace the value with **51721**.

	![Picture 81](Linked_image_Files/11-create-power-bi-paginated-report_image59.png)

23. To re-run the report, at the right, click **View Report**.

	![Picture 82](Linked_image_Files/11-create-power-bi-paginated-report_image60.png)

	*This sales order has 72 sales order lines, and so the data will render over many pages.*

24. To navigate to the second page of the report, on the **Run** ribbon tab, from inside the **Navigation** group, click **Next**.

	![Picture 83](Linked_image_Files/11-create-power-bi-paginated-report_image61.png)

25. On page 2, notice that the table header does not appear.

	*You will address this issue in the next task.*

26. Scroll to the bottom of the page, and then notice that the report footer displays only the execution time.

	*In the next task you will improve the footer text by appending the page number.*

### **Task 7: Finalize the report design**

In this task you will finalize the report design by ensuring multi-page reports render appropriately.

1. Switch to the design view.

2. To ensure the table header repeats on all pages, first select any textbox of the table.

3. In the **Grouping** pane (located along the bottom of the report designer), at the far right of the **Column Groups**, click the down-arrow, and then select **Advanced Mode**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML34447bde.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image62.png)

4. In the **Row Groups** section, select the first static group.

	![Picture 86](Linked_image_Files/11-create-power-bi-paginated-report_image63.png)

	*This selected the table header row.*

5. In the **Properties** pane, set the **Other \| RepeatOnNewPage** property to **True**.

	*This ensures that the first static group (representing the table header) will repeat on all pages.*

6. In the table footer region, right-click the **ExecutionTime** textbox, and then select **Expression**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML34484edf.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image64.png)

7. In the **Expression** window, in the expression box, append a space, followed by **&amp; " \| Page " &amp;**, to produce the following:


	**VB Script**
	```
	=Globals!ExecutionTime & " | Page " &
	```


8. Ensure that a space follows the last ampersand (&).

9. In the **Category** list, select **Built-in Fields**.

	![Picture 94](Linked_image_Files/11-create-power-bi-paginated-report_image65.png)

10. To inject the page number value into the expression, in the **Item** list, double-click **PageNumber**.

11. Verify that the complete expression reads as follows:

	![Picture 114](Linked_image_Files/11-create-power-bi-paginated-report_image66.png)

12. Click **OK**.

13. Drag the left side of the textbox to increase the width to the width of the report page.

	![Picture 104](Linked_image_Files/11-create-power-bi-paginated-report_image67.png)

	*The design of the report is now complete. Lastly, you will ensure that the page width is set to exactly six inches, and also remove the report parameter default value.*

14. To select the report body, right-click any table textbox, and then select **Select \| Body**.

	![C:\Users\PETERM~1\AppData\Local\Temp\SNAGHTML34507b38.PNG](Linked_image_Files/11-create-power-bi-paginated-report_image68.png)

	*As the table fills the entire report body, this technique must be used to select the report body.*

15. In the **Properties** pane, ensure that the **Position \| Size \| Width** property is set to **6**.

	*It is important the width is not greater than six inches, as rendering to print format would break the table up across multiple pages.*

16. In the **Report Data** pane, open the **SalesOrderNumber** report parameter properties.

17. On the **Default Values** page, select the **No Default Value** option.

	![Picture 98](Linked_image_Files/11-create-power-bi-paginated-report_image69.png)

18. Click **OK**.

19. Save the report.

### **Task 8: Explore the final report**

In this task you will view the report in print layout mode.

1. Preview the report.

2. In the **Sales Order Number** parameter box, enter the value with **51721**

3. On the **Run** ribbon tab, from inside the **Print** group, click **Print Layout**.

	![Picture 7](Linked_image_Files/11-create-power-bi-paginated-report_image70.png)

	*Print layout mode provides a preview of what the report will look like when printed to the strict page size.*

4. Navigate to pages 2 and 3.

	*In this lab you won’t publish the report. Paginated reports can only be rendered in the Power BI service when they are stored in a workspace on dedicated capacity, and when that capacity has the paginated reports workload enabled. These requirements do not exist for the class.*
