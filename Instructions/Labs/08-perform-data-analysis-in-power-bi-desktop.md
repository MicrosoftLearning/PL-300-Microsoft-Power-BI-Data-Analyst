---
lab:
    course: 'PL-300'
    title: 'Perform Advanced Analytics with AI Visuals'
    module: 'Perform Data Analysis in Power BI'
---


# **Perform Data Analysis in Power BI**

## **Lab story**

In this lab, you'll create the **Sales Exploration** report.

In this lab you learn how to:

- Create animated scatter charts
- Use a visual to forecast values

**This lab should take approximately 30 minutes.**

## **Get started – Sign in**

In this task, you'll set up the environment for the lab by signing in to Power BI.

*Note: If you've already signed in to Power BI, skip to the next task.*

1. To open Microsoft Edge, on the taskbar, select the Microsoft Edge program shortcut.

     ![Picture 12](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image1.png)

1. In the Microsoft Edge browser window, navigate to **https://app.powerbi.com**.

    *Tip: You can also use the Power BI Service favorite on the Microsoft Edge favorites bar.*

1. Complete the sign-in process with your organizational (or provided) credentials. If prompted by Microsoft Edge to stay signed in, select **Yes**.

1. In the Microsoft Edge browser window, in the Power BI service, in the **Navigation** pane, expand **My Workspace**. Leave the Microsoft Edge browser window open.

     ![Picture 22](Linked_image_Files/07-my-workspace-new.png)

## **Get started – Create a semantic model**

In this task, you'll set up the environment for the lab by creating a semantic model. *If you've already published the semantic model, please move to the next task.*

1. In the Microsoft Edge browser window, in the Power BI service, navigate to **My Workspace**.

1. Select **Upload > Browse**.

1. Navigate to **D:\Allfiles\Labs\08-perform-data-analysis-in-power-bi-desktop\Starter** folder.

1. Select the **Sales Analysis.pbix** file, and then select **Open**.

	*If prompted to replace the semantic model, select **Replace it**.*

*This method will create a report and a semantic model. We will only use the semantic model to create a new report in this exercise. This same process could be done with an existing semantic model from a different report instead of uploading new. Also, if you aren't using the report, workspace best practices suggest you delete the unnecessary file.*

## **Create the report**

In this task, you'll create a live connection to the Power BI semantic model created in the last task, and then create a new **Sales Exploration** report.

1. Open Power BI Desktop.

    ![Power BI Desktop icon](Linked_image_Files/02-load-data-with-power-query-in-power-bi-desktop_image1.png)

    *Important: If you already have Power BI Desktop open (from a previous lab), close that instance.*

    *Tip: By default, the Getting Started dialog box opens in front of Power BI Desktop. You can choose to sign-in, and then close the pop-up.*

1. In the Home ribbon, select **Get Data > Power BI semantic models**.

1. In the **Data hub** window, select the **Sales Analysis** semantic model in **My Workspace**, and then **Connect** or double-click to load the semantic model.

1. Navigate to **File > Save** and save the file name as **Sales Exploration** in the **D:\Allfiles\MySolution** folder.

*You’ll now create two report pages, and on each page you’ll work with a different visual to analyze and explore data.*

## **Create an animated scatter chart**

In this task, you'll create a scatter chart that can be animated.

1. Rename **Page 1** as **Scatter Chart**.

1. Add a **Scatter Chart** visual to the report page, and then position and resize it so it fills the entire page.
    
	*The chart can be animated when a field is added to the **Play Axis** well/area.*

	 ![Picture 18](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image15.png)

	 ![Picture 75](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image16.png)

1. Add the following fields to the visual wells/areas:
    
	*The labs use a shorthand notation to reference a field. It will look like this: **Reseller** **\|** **Business Type**. In this example, **Reseller** is the table name and **Business Type** is the field name.*

	 - X Axis: **Sales \| Sales**
	 - Y Axis: **Sales \| Profit Margin**
	 - Legend: **Reseller \| Business Type**
	 - Size: **Sales \| Quantity**
	 - Play Axis: **Date \| Quarter**

1. In the **Filters** pane, add the **Product \| Category** field to the **Filters On This Page** well/area.

1. In the filter card, filter by **Bikes**.

1. To animate the chart, at the bottom left corner, select **Play**.

	![Picture 41](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image19.png)

1. Watch the entire animation cycle from **FY2018 Q1** to **FY2020 Q4**.
    
	*The scatter chart allows understanding the measure values simultaneously: in this case, order quantity, sales revenue, and profit margin.*
    
	*Each bubble represents a reseller business type. Changes in the bubble size reflect increased or decreased order quantities. While horizontal movements represent increases/decreases in sales revenue, and vertical movements represent increases/decreases in profitability.*

1. When the animation stops, select one of the bubbles to reveal its tracking over time.

1. Hover the cursor over any bubble to reveal a tooltip describing the measure values for the reseller type at that point in time.

1. In the **Filters** pane, filter by **Clothing** only, and notice that it produces a very different result.

1. Save the Power BI Desktop file.


## **Create a forecast**

In this task, you'll create a forecast to determine possible future sales revenue.

1. Add a new page, and then rename the page to **Forecast**.

1. Add a **Line Chart** visual to the report page, and then position and resize it so it fills the entire page.

	 ![Picture 19](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image21.png)

	 ![Picture 74](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image22.png)

1. Add the following fields to the visual wells/areas:

	 - X-axis: **Date \| Date**
	 - Y-axis: **Sales \| Sales**

1. In the **Filters** pane, add the **Date \| Year** field to the **Filters On This Page** well/area.

1. In the filter card, filter by two years: **FY2019** and **FY2020**.
	
	*When forecasting over a time line, you'll need at least two cycles (years) of data to produce an accurate and stable forecast.*

1. Add also the **Product \| Category** field to the **Filters On This Page** well/area, and filter by **Bikes**.

1. To add a forecast, beneath the **Visualizations** pane, select the **Analytics** pane.

	 ![Picture 20](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image26.png)

8. Expand the **Forecast** section.
    
	*If the **Forecast** section isn't available, it’s probably because the visual hasn’t been correctly configured. Forecasting is only available when two conditions are met: the axis has a single field of type date, and there’s only one value field.*

1. Turn the **Forecast** option to **On**.

1. Configure the following forecast properties, then **Apply**:

	- Units: **Months**
	- Forecast length: **1 month**
	- Seasonality: **365**
	- Confidence interval: **80%**

	![Picture 52](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image29.png)

1. In the line visual, notice that the forecast has extended one month beyond the history data.
    
	*The gray area represents the confidence. The wider the confidence, the less stable—and therefore the less accurate—the forecast is likely to be.*
    
	*When you know the length of the cycle, in this case annual, you should enter the seasonality points. Sometimes it could be weekly (7), or monthly (30).*

1. In the **Filters** pane, filter by **Clothing** only, and notice that it produces a different result.

### **Finish up**

In this task, you'll complete the lab in Power BI Desktop.

1. Select the **Scatter Chart** page.

1. Save the Power BI Desktop file.

1. To publish the file to your **My workspace**, on the **Home** ribbon tab, from inside the **Share** group, select **Publish** and then select **Select** to publish.

	![Picture 23](Linked_image_Files/10-perform-data-analysis-in-power-bi-desktop_image46.png)

1. Close Power BI Desktop.
