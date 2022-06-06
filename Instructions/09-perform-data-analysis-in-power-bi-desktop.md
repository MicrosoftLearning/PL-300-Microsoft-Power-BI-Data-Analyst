---
lab:
    title: 'Perform Data Analysis in Power BI Desktop'
    module: 'Module 9 - Identify Patterns and Trends'
---


# **Perform Data Analysis in Power BI Desktop**

**The estimated time to complete the lab is 45 minutes**

In this lab you will create the **Sales Exploration** report.

In this lab you learn how to:

- Create animated scatter charts

- Use a visual to forecast values



### **Lab story**

This lab is one of many in a series of labs that was designed as a complete story from data preparation to publication as reports and dashboards. You can complete the labs in any order. However, if you intend to work through multiple labs, for the first 10 labs, we suggest you do them in the following order:

1. Prepare Data in Power BI Desktop

2. Load Data in Power BI Desktop

3. Model Data in Power BI Desktop

5. Create DAX Calculations in Power BI Desktop, Part 1

6. Create DAX Calculations in Power BI Desktop, Part 2

7. Design a Report in Power BI Desktop, Part 1

8. Design a Report in Power BI Desktop, Part 2

9. Create a Power BI Dashboard

10. **Perform Data Analysis in Power BI Desktop**

11. Enforce Row-Level Security

## **Exercise 1: Create the Report**

In this exercise you will create the **Sales Exploration** report.

### **Task 1: Get started – Sign in**

In this task you will setup the environment for the lab by signing in to Power BI.

*Important: If you have already signed in to Power BI in a previous lab, continue from the next task.*

1. To open Microsoft Edge, on the taskbar, click the Microsoft Edge program shortcut.

 	![Picture 7](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image1.png)

1. In the Microsoft Edge browser window, navigate to **https://powerbi.microsoft.com**.

 	*Tip: You can also use the Power BI Service favorite on the Microsoft Edge favorites bar.*

1. Click **Sign In** (located at the top-right corner).

 	![Picture 5](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image2.png)

1. Enter the account details provided to you.

1. If prompted to update the password, reenter the provided password, and then enter and confirm a new password.

 	*Important: Be sure to record your new password.*

1. Complete the sign in process.

1. If prompted by Microsoft Edge to stay signed in, click **Yes**.

1. In the Microsoft Edge browser window, in the Power BI service, in the **Navigation** pane, expand **My Workspace**.

 	![Picture 4](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image3.png)

1. Leave the Microsoft Edge browser window open.

### **Task 2: Get started – Create a dataset**

In this task you will setup the environment for the lab by creating a dataset.

*Important: If you have already published the dataset in the **Create a Power BI Dashboard** lab, continue from the next task.*

1. In the Microsoft Edge browser window, in the Power BI service, in the **Navigation** pane, at the bottom, click **Get Data**.

	![Picture 8](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image4.png)

2. In the **Files** tile, click **Get**.

	![Picture 10](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image5.png)

3. Click the **Local File** tile.

	![Picture 11](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image6.png)

4. In the **Open** window, navigate to the **D:\PL300\Labs\08-create-power-bi-dashboard\Solution** folder.

5. Select the **Sales Analysis.pbix** file, and then click **Open**.

6. If prompted to replace the dataset, click **Replace it**.

### **Task 3: Create the report**

In this task you will create the **Sales Exploration** report.

1. To open the Power BI Desktop, on the taskbar, click the Microsoft Power BI Desktop shortcut.

	*Important: If you already have Power BI Desktop open (from a previous lab), close that instance.*

	![Picture 14](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image7.png)

2. To close the getting started window, at the top-left of the window, click **X**.

	![Picture 13](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image8.png)

3. If Power BI Desktop is not signed in to the Power BI service, at the top-right, click **Sign In**.

	![Picture 16](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image9.png)

4. Complete the sign in process using the same account used to sign in to the Power BI service.

5. To save the file, click the **File** ribbon tab to open the backstage view.

6. Select **Save**.

	![Picture 12](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image10.png)

7. In the **Save As** window, navigate to the **D:\PL300\MySolution** folder.

8. In the **File Name** box, enter **Sales Exploration**.

	![Picture 1](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image11.png)

9. To create a live connection to the **Sales Analysis** dataset, on the **Home** ribbon tab, from inside the **Data** group, click **Power BI Datasets**.

	![Picture 15](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image12.png)

10. In the **Select a Dataset to Create a Report** window, select the **Sales Analysis** dataset.

11. Click **Connect**.

	![Picture 17](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image13.png)

12. Save the Power BI Desktop file.

	*You’ll now create two report pages, and on each page you’ll work with a different visual to analyze and explore data.*

## **Exercise 2: Create a Scatter Chart**

In this exercise you will create a scatter chart that can be animated.

### **Task 1: Create an animated scatter chart**

In this task you will create a scatter chart that can be animated.

1. Rename **Page 1** as **Scatter Chart**.

	![Picture 67](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image14.png)

2. Add a **Scatter Chart** visual to the report page, and then position and resize it so it fills the entire page.

	![Picture 18](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image15.png)

	![Picture 75](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image16.png)

3. Add the following fields to the visual wells/areas:

	The labs use a shorthand notation to reference a field. It will look like this: **Reseller** **\|** **Business Type**. In this example, **Reseller** is the table name and **Business Type** is the field name.

	

	- X Axis: **Sales \| Sales** 

	- Y Axis: **Sales \| Profit Margin**

	- Legend: **Reseller \| Business Type**

	- Size: **Sales \| Quantity**

	- Play Axis: **Date \| Quarter**

	![Picture 39](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image17.png)

	*The chart can be animated when a field is added to the **Play Axis** well/area.*

4. In the **Filters** pane, add the **Product \| Category** field to the **Filters On This Page** well/area.

5. In the filter card, filter by **Bikes**.

	![Picture 40](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image18.png)

6. To animate the chart, at the bottom left corner, click **Play**.

	![Picture 41](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image19.png)

7. Watch the entire animation cycle from **FY2018 Q1** to **FY2020 Q4**.

	*The scatter chart allows understanding the measure values simultaneously: in this case, order quantity, sales revenue, and profit margin.*

	*Each bubble represents a reseller business type. Changes in the bubble size reflect increased or decreased order quantities. While horizontal movements represent increases/decreases in sales revenue, and vertical movements represent increases/decreases in profitability.*

8. When the animation stops, click one of the bubbles to reveal its tracking over time.

9. Hover the cursor over any bubble to reveal a tooltip describing the measure values for the reseller type at that point in time.

10. In the **Filters** pane, filter by **Clothing** only, and notice that it produces a very different result.

11. Save the Power BI Desktop file.

## **Exercise 3: Create a Forecast**

In this exercise you will create a forecast to determine possible future sales revenue.

### **Task 1: Create a forecast**

In this task you will create a forecast to determine possible future sales revenue.

1. Add a new page, and then rename the page to **Forecast**.

	![Picture 66](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image20.png)

2. Add a **Line Chart** visual to the report page, and then position and resize it so it fills the entire page.

	![Picture 19](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image21.png)

	![Picture 74](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image22.png)

  

3. Add the following fields to the visual wells/areas:

	- X-axis: **Date \| Date**

	- Y-axis: **Sales \| Sales** 

	![Picture 46](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image23.png)

4. In the **Filters** pane, add the **Date \| Year** field to the **Filters On This Page** well/area.

5. In the filter card, filter by two years: **FY2019** and **FY2020**.

	![Picture 47](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image24.png)

	*When forecasting over a time line, you will need at least two cycles (years) of data to produce an accurate and stable forecast.*

  

6. Add also the **Product \| Category** field to the **Filters On This Page** well/area, and filter by **Bikes**.

	![Picture 48](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image25.png)

7. To add a forecast, beneath the **Visualizations** pane, select the **Analytics** pane.

	![Picture 20](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image26.png)

8. Expand the **Forecast** section.



	*If the **Forecast** section is not available, it’s probably because the visual hasn’t been correctly configured. Forecasting is only available when two conditions are met: the axis has a single field of type date, and there’s only one value field.*

9. Turn the **Forecast** option to **On**.

	![Picture 51](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image28.png)

10. Configure the following forecast properties:

	- Units: Months

	- Forecast length: 1 month

	- Seasonality: 365
	
	- Confidence interval: 80%



11. Click **Apply**.

	![Picture 52](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image29.png)

12. In the line visual, notice that the forecast has extended one month beyond the history data.

	*The gray area represents the confidence. The wider the confidence, the less stable—and therefore the less accurate—the forecast is likely to be.*

	*When you know the length of the cycle, in this case annual, you should enter the seasonality points. Sometimes it could be weekly (7), or monthly (30).*

13. In the **Filters** pane, filter by **Clothing** only, and notice that it produces a different result.

14. Save the Power BI Desktop file.


### **Task 2: Finish up**

In this task you will complete the lab.

1. Select the **Scatter Chart** page.

2. Save the Power BI Desktop file.

3. To publish the file to your **My workspace**, on the **Home** ribbon tab, from inside the **Share** group, click **Publish**.

	![Picture 23](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image46.png)

4.  Close Power BI Desktop.
