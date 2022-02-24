---
lab:
    title: 'Design a Report in Power BI Desktop, Part 2'
    module: 'Module 7 - Create Reports'
---


# **Design a Report in Power BI Desktop, Part 2**

**The estimated time to complete the lab is 45 minutes**

In this lab you will enhance the **Sales Analysis** with advanced design features.

In this lab you learn how to:

- Sync slicers

- Create a drillthrough page

- Apply conditional formatting

- Create and use bookmarks

### **Lab story**

This lab is one of many in a series of labs that was designed as a complete story from data preparation to publication as reports and dashboards. You can complete the labs in any order. However, if you intend to work through multiple labs, for the first 10 labs, we suggest you do them in the following order:

1. Prepare Data in Power BI Desktop

2. Load Data in Power BI Desktop

3. Model Data in Power BI Desktop, Part 1

4. Model Data in Power BI Desktop, Part 2

5. Create DAX Calculations in Power BI Desktop, Part 1

6. Create DAX Calculations in Power BI Desktop, Part 2

7. Design a Report in Power BI Desktop, Part 1

8. **Design a Report in Power BI Desktop, Part 2**

9. Create a Power BI Dashboard

10. Create a Power BI Paginated Report

11. Perform Data Analysis in Power BI Desktop

12. Enforce Row-Level Security

## **Exercise 1: Configure Sync Slicers**

In this exercise you will sync the report page slicers.

### Task 1: Get started – Sign in

In this task you will setup the environment for the lab by signing in to Power BI.

*Important: If you have already signed in to Power BI, continue from the next task.*

1. To open Microsoft Edge, on the taskbar, click the Microsoft Edge program shortcut.

 	![Picture 12](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image1.png)

1. In the Microsoft Edge browser window, navigate to **https://powerbi.com**.

 	*Tip: You can also use the Power BI Service favorite on the Microsoft Edge favorites bar.*

1. Click **Sign In** (located at the top-right corner).

 	![Picture 11](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image2.png)

1. Enter the account details provided to you.

1. If prompted to update the password, reenter the provided password, and then enter and confirm a new password.

 	*Important: Be sure to record your new password.*

1. Complete the sign in process.

1. If prompted by Microsoft Edge to stay signed in, click **Yes**.

1. In the Microsoft Edge browser window, in the Power BI service, in the **Navigation** pane, expand **My Workspace**.

 	![Picture 22](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image3.png)

1. Leave the Microsoft Edge browser window open.

### Task 2: Get started – Open report

In this task you will setup the environment for the lab by opening the starter report.

*Important: If you are continuing on from the previous lab (and you completed that lab successfully), do not complete this task; instead, continue from the next task.*

1. To open the Power BI Desktop, on the taskbar, click the Microsoft Power BI Desktop shortcut.

	![Picture 10](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image4.png)

2. To close the getting started window, at the top-left of the window, click **X**.

	![Picture 9](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image5.png)

3. To sign in to the Power BI service, at the top-right, click **Sign In**.

	![Picture 8](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image6.png)

4. Complete the sign in process using the same account used to sign in to the Power BI service.

5. To open the starter Power BI Desktop file, click the **File** ribbon tab to open the backstage view.

6. Select **Open Report**.

	![Picture 7](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image7.png)

7. Click **Browse Reports**.

	![Picture 6](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image8.png)

8. In the **Open** window, navigate to the **D:\DA100\Labs\08-design-report-in-power-bi-desktop-enhanced\Starter** folder.

9. Select the **Sales Analysis** file.

10. Click **Open**.

	![Picture 5](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image9.png)

11. Close any informational windows that may open.

12. To create a copy of the file, click the **File** ribbon tab to open the backstage view.

13. Select **Save As**.

	![Picture 4](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image10.png)

14. If prompted to apply changes, click **Apply**.

	![Picture 3](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image11.png)

15. In the **Save As** window, navigate to the **D:\DA100\MySolution** folder.

16. Click **Save**.

	![Picture 2](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image12.png)

### **Task 3: Sync slicers**

In this task you will sync the **Year** and **Region** slicers.

*You will continue the development of the report created in the **Design a Report in Power BI Desktop, Part 1** lab.*

1. In Power BI Desktop, on the **Overview** page, set the **Year** slicer to **FY2018**.

2. Go to the **My Performance** page, and then notice that the **Year** slicer is a different value.

	*When slicers aren’t synced it can contribute to misrepresentation of data and frustration for report users. You’ll now sync the report slicers.*

3. Return to the **Overview** page, and then select the **Year** slicer.

4. On the **View** ribbon tab, from inside the **Show Panes** group, click **Sync Slicers**.

	![Picture 1](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image13.png)

5. In the **Sync Slicers** pane (at the left of the **Visualizations** pane), in the second column (which represents syncing), check the checkboxes for the **Overview** and **My Performance** pages.

	![Picture 93](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image14.png)

6. On the **Overview** page, select the **Region** slicer.

7. Sync the slicer with the **Overview** and **Profit** pages.

	![Picture 94](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image15.png)

8. Test the sync slicers by selecting different filter options, and then verifying that the synced slicers filter by the same selection.

9. To close the **Sync Slicer** page, click the **X** located at the top-right of the pane.

	![Picture 98](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image16.png)

## **Exercise 2: Configure Drill Through**

In this exercise you will create a new page and configure it as a drill through page. When you’ve completed the design, the page will look like the following:

![Image of the new page, comprising a card visual and table visual.](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image17.png)

### **Task 1: Create a drill through page**

In this task you will create a new page and configure it as a drill through page.

1. Add a new report page named **Product Details**.

	![Picture 95](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image18.png)

2. Right-click the **Product Details** page tab, and then select **Hide Page**.

	![Picture 97](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image19.png)

	*Report users won’t be able to go to the drill through page directly. They’ll need to access it from visuals on other pages. You’ll learn how to drill through to the page in the final exercise of this lab.*

3. Beneath the **Visualizations** pane, in the **Drill Through** section, add the **Product \| Category** field to the **Add Drill-Through Fields Here** box.

	*The labs use a shorthand notation to reference a field. It will look like this: **Product \| Category**. In this example, **Product** is the table name and **Category** is the field name.*

	![Picture 96](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image20.png)

4. To test the drill through page, in the drill through filter card, select **Bikes**.

	![Picture 99](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image21.png)

5. At the top-left of the report page, notice the arrow button.

	![Picture 100](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image22.png)

	*A button is added automatically when a field is added to the drill through well/area. It allows report users to navigate back to the page from which they drilled through.*

6. Add a **Card** visual to the page, and then resize and position it so it sits to the right of the button and fills the remaining width of the page.

	![Picture 13](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image23.png)

	![Picture 101](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image24.png)

7. Drag the **Product \| Category** field into the card visual.

8. Configure the format options for the visual, and then turn the **Category Label** property to **Off**.

	![Picture 103](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image25.png)

9. Set the **Background Color** property to a light shade of gray.

10. Add a **Table** visual to the page, and then resize and position it so it sits beneath the card visual and fills the remaining space on the page.

	![Picture 14](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image26.png)

	![Picture 105](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image27.png)

11. Add the following fields to the visual:

	- Product \| Subcategory

	- Product \| Color

	- Sales \| Quantity

	- Sales \| Sales

	- Sales \| Profit Margin

12. Configure the format options for the visual, and in the **Grid** section, set the **Text Size** property to **20pt**.

	*The design of the drill through page is almost complete. You’ll enhance the page with conditional formatting in the next exercise.*

## **Exercise 3: Add Conditional Formatting**

In this exercise you will enhance the drill through page with conditional formatting. When you’ve completed the design, the page will look like the following:

![Image of an updated page, revealing color formatted values and icons.](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image28.png)

### **Task 1: Add conditional formatting**

In this task you will enhance the drill through page with conditional formatting.

1. Select the table visual.

2. In the visualization pane, click the down-arrow on the **Profit Margin** value, and then select **Conditional Formatting \| Icons**.

	![Picture 107](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image29.png)

3. In the **Icons – Profit Margin** window, in the **Icon Layout** dropdown list, select **Right of Data**.

	![Picture 108](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image30.png)

4. To delete the middle rule, at the left of the yellow triangle, click **X**.

	![Picture 109](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image31.png)

5. Configure the first rule (red diamond) as follows:

	- In the second control, remove the value

	- In the third control, select **Number**

	- In the fifth control, enter **0**

	- In the sixth control, select **Number**

6. Configure the second rule (green circle) as follows:

	- In the second control, enter **0**

	- In the third control, select **Number**

	- In the fifth control, remove the value

	- In the sixth control, select **Number**

	![Picture 110](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image32.png)

	*The rules can be interpreted as follows: display a red diamond if the profit margin value is less than 0; otherwise if the value is great or equal to zero, display a green circle.*

7. Click **OK**.

	![Picture 111](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image33.png)

8. In the table visual, verify that the that the correct icons are displayed.

	![Picture 112](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image34.png)

9. Configure background color conditional formatting for the **Color** field.

10. In the **Background Color – Color** window, in the **Format By** dropdown list, select **Field Value**.

	![Picture 113](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image35.png)

11. In the **Based on Field** dropdown list, select **Product \| Formatting \| Background Color Format**.

	![Picture 114](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image36.png)

12. Click **OK**.

	![Picture 115](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image37.png)

13. Repeat the previous steps to configure font color conditional formatting for the **Color** field, using the **Product \| Formatting \| Font Color Format** field

	*You may recall that the background and font colors were source from the **ColorFormats.csv** file in the **Prepare Data in Power BI Desktop** lab, and then integrated with the **Product** query in the **Load Data in Power BI Desktop** lab.*

## **Exercise 4: Add Bookmarks and Buttons**

In this exercise you will enhance the **My Performance** page with buttons, allowing the report user to select the visual type to display. When you’ve completed the design, the page will look like the following:

![Image of an updated page 3, showing two buttons and now just two visuals.](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image38.png)

### **Task 1: Add bookmarks**

In this task you will add two bookmarks, one to display each of the monthly sales/targets visuals.

1. Go to the **My Performance** page.

2. On the **View** ribbon tab, from inside the **Show Panes** group, click **Bookmarks**.

	![Picture 118](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image39.png)

3. On the **View** ribbon tab, from inside the **Show Panes** group, click **Selection**.

	![Picture 119](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image40.png)

4. In the **Selection** pane, beside one of the **Sales and Target by Month** items, to hide the visual, click the eye icon.

	![Picture 120](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image41.png)

5. In the **Bookmarks** pane, click **Add**.

	![Picture 121](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image42.png)

6. To rename the bookmark, double-click the bookmark.

7. If the visible chart is the bar chart, rename the bookmark as **Bar Chart ON**, otherwise rename the bookmark as **Column Chart ON**.

8. To edit the bookmark, in the **Bookmarks** pane, hover the cursor over the bookmark, click the ellipsis, and then select **Data**.

	![Picture 16](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image43.png)

	*Disabling the **Data** option means the bookmark won’t use the current filter state. That’s important because otherwise the bookmark would permanently lock in the filter currently applied by the **Year** slicer.*

9. To update the bookmark, click the ellipsis again, and then select **Update**.

	![Picture 18](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image44.png)

	*In the following steps, you’ll create and configure a second bookmark to show the second visual.*

10. In the **Selection** pane, toggle the visibility of the two **Sales and Target by Month** items.

	*In other words, make the visible visual hidden, and make the hidden visual visible.*

	![Picture 122](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image45.png)

11. Create a second bookmark, and name it appropriately (either **Column Chart ON** or **Bar Chart ON).**

	![Picture 123](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image46.png)

12. Configure the second bookmark to ignore filters (**Data** option off), and update the bookmark.

13. In the **Selection** pane, to make both visuals visible, simply show the hidden visual.

14. Resize and reposition both visuals so they fill the page beneath the multi-card visual, and completely overlap one another.

	*Tip: To select the visual that is covered up, select it in the **Selection** pane.*

	![Picture 124](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image47.png)

15. In the **Bookmarks** pane, select each of the bookmarks, and notice that only one of the visuals is visible.

	*The next stage of design is to add two buttons to the page, which will allow the report user to select the bookmarks.*

### **Task 2: Add buttons**

In this task you will add two buttons, and assign bookmark actions to each.

1. On the **Insert** ribbon, from inside the **Elements** group, click **Button**, and then select **Blank**.

	![Picture 125](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image48.png)

2. Position the button directly beneath the **Year** slicer.

3. Select the button, and then in the **Format button** pane, turn the **Button Text** property to **On**.

	![Picture 126](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image49.png)

4. Expand the **Button Text** section, and then in the **Button Text** box, enter **Bar Chart**.

5. Expand the **Background** section, and then set a background color using a complementary color.

6. Turn the **Action** property to **On** (located near the bottom of the list).

	![Picture 127](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image50.png)

7. Expand the **Action** section, and then set the **Type** dropdown list to **Bookmark**.

8. In the **Bookmark** dropdown list, select **Bar Chart ON**.

	![Picture 128](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image51.png)

9. Create a copy of the button by using copy and paste, and then configure the new button as follows:

	*Tip: The shortcut commands for copy and paste are **Ctrl+C** followed by **Ctrl+V**.*

	- Set the **Button Text** property to **Column Chart**

	- In the **Action** section, set the **Bookmark** dropdown list to **Column Chart ON**

	*The design of the Sales Analysis report is now complete.*

### **Task 3: Publish the report**

In this task you will publish the report.

1. Select the **Overview** page.

2. In the **Year** slicer, select **FY2020**.

3. In the **Region** slicer, select **Select All**.

4. Save the Power BI Desktop file.

	*The file must always be saved prior to publishing to the Power BI service.*

5. On the **Home** ribbon tab, from inside the **Share** group, click **Publish**.

	![Picture 21](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image52.png)

6. In the **Publish to Power** BI window, notice that **My Workspace** is selected.

7. To publish the report, click **Select**.

	![Picture 20](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image53.png)

8. If prompted to replace the dataset, click **Replace**.

9. When the publication has succeeded, click **Got It**.

	![Picture 19](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image54.png)

10. Close Power BI Desktop.

	*You’ll explore the report in the Power BI service in the next exercise.*

## **Exercise 5: Explore the Report**

In this exercise you will explore the report in the Power BI service.

### **Task 1: Explore the report**

In this task you will explore the report in the Power BI service.

1. In the Microsoft Edge browser window, in the Power BI service, in the **Navigation** pane, click the **Sales Analysis** report.

2. To test the drill through report, in the **Overview** page, in the **Quantity by Category** visual, right-click the **Clothing** bar, and then select **Drill Through \| Product Details**.

	![Picture 130](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image55.png)

3. Notice that the **Product Details** page is for **Clothing**.

4. To return to the source page, at the top-left corner of the page, click the arrow button.

5. Select the **My Performance** page.

6. Click each of the buttons, and then notice that a different visual is displayed.

### **Task 2: Finish up**

In this task you will complete the lab.

1. To return to your workspace, in the banner across the window web page, click **My Workspace**.

	![Picture 23](Linked_image_Files/08-design-report-in-power-bi-desktop-enhanced_image56.png)

2. Leave the Microsoft Edge browser window open.
