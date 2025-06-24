---
lab:
    title: 'Secure data access in Power BI'
    module: 'Secure data access in Power BI'
---

# Secure data access in Power BI

## Lab story

In this lab, you'll enforce row-level security to ensure that a salesperson can only analyze sales data for their assigned region(s).

In this lab, you learn how to:

- Enforce row-level security.
- Choose between dynamic and static methods.

**This lab should take approximately 20 minutes.**

## Get started

To complete this exercise, first open a web browser and enter the following URL to download the zip folder:

`https://github.com/MicrosoftLearning/PL-300-Microsoft-Power-BI-Data-Analyst/raw/Main/Allfiles/Labs/11-secure-data-access/11-secure-data.zip`

Extract the folder to the **C:\Users\Student\Downloads\11-secure-data** folder.

Open the **11-Starter-Sales Analysis.pbix** file.

> ***Note**: You can dismiss the sign-in by selecting **Cancel**. Close any other informational windows. Select **Apply Later**, if prompted to apply changes.*

## Enforce row-level security

In this task, you'll enforce row-level security to ensure a salesperson can only see sales made in their assigned region(s).

1. Switch to Table view.

   ![Picture 5701](Linked_image_Files/11-secure-data-access_image20.png)

1. In the **Data** pane, select the **Salesperson (Performance)** table.

1. Review the data, noticing that Michael Blythe (EmployeeKey 281) has a UPN value of: **`michael-blythe@adventureworks.com`**
    
	> *You may recall that Michael Blythe is assigned to three sales regions: US Northeast, US Central, and US Southeast.*

1. On the **Home** ribbon tab, from inside the **Security** group, select **Manage Roles**.

    ![Picture 5700](Linked_image_Files/11-secure-data-access_image21.png)

1. In the **Manage security roles** window, in the **Roles** section, select **New**.

1. In the box, replace the selected text with the name of the role: **Salespeople**, and then press **Enter**.

   ![Picture 5703](Linked_image_Files/11-secure-data-access_image23.png)

1. To assign a filter, select the **Salesperson (Performance)** table, and then select **Switch to DAX editor** in the **Filter data** section.

   ![Picture 5703](Linked_image_Files/11-secure-data-access_image24.png)

1. In the DAX editor box, enter the following expression:

    ```DAX
    [UPN] = USERPRINCIPALNAME()
    ```

   ![Picture 11](Linked_image_Files/11-secure-data-access_image25.png)

    > *USERPRINCIPALNAME() is a Data Analysis Expressions (DAX) function that returns the name of the authenticated user. It means that the **Salesperson (Performance)** table will filter by the User Principal Name (UPN) of the user querying the model.*

1. Select **Save** and **Close**.

1. To test the security role, on the **Home** ribbon tab, from inside the **Security** group, select **View As**.

   ![Picture 5708](Linked_image_Files/11-secure-data-access_image27.png)

1. In the **View as Roles** window, check the **Other User** item, and then in the corresponding box, enter: **`michael-blythe@adventureworks.com`**

1. Check the **Salespeople** role, and then **OK**.
    
	> *This configuration results in using the **Salespeople** role and impersonating the user with your Michael Blythe’s name.*

   ![Picture 5709](Linked_image_Files/11-secure-data-access_image28.png)

1. Notice the yellow banner above the report page, describing the test security context.

   ![Picture 13](Linked_image_Files/11-secure-data-access_image30.png)

1. In the table visual, notice that only the salesperson **Michael Blythe** is listed.

   ![Picture 5713](Linked_image_Files/11-secure-data-access_image31.png)

1. To stop testing, at the right side of the yellow banner, select **Stop Viewing**.

   ![Picture 5712](Linked_image_Files/11-secure-data-access_image32.png)

1. To delete the **Salespeople** role, on the **Home** ribbon tab, from inside the **Security** group, select **Manage Roles**.

   ![Picture 16](Linked_image_Files/11-secure-data-access_image33.png)

1. In the **Manage security roles** window, select the ellipsis (...) on the **Salespeople** role, and select **Delete**. When prompted to confirm the deletion, select **Yes, Delete**.

   ![Picture 34](Linked_image_Files/11-secure-data-access_image34.png)

*Note: When the Power BI Desktop file is published to the Power BI service, you’ll need to complete a post-publication task to map security principals to the **Salespeople** role. You won’t do that in this lab.*

## Lab complete
