---
lab:
    title: 'Use DAX time intelligence functions in Power BI'
    module: 'Use DAX time intelligence functions in Power BI'
---

# Use DAX time intelligence functions in Power BI

## Lab story

In this lab, you'll create measures with DAX expressions that involve time intelligence.

In this lab, learn how to:

 - Use various time intelligence functions to manipulate filter context that specific concerns dates.

**This lab should take approximately 15 minutes.**

## Get started

To complete this exercise, first open a web browser and enter the following URL to download the zip file:

`https://github.com/MicrosoftLearning/PL-300-Microsoft-Power-BI-Data-Analyst/raw/Main/Allfiles/Labs/06-use-dax-time-intelligence/06-time-intelligence.zip`

Extract the file to the **C:\Users\Student\Downloads\06-time-intelligence** folder.

Open the **06-Starter-Sales Analysis.pbix** file.

> _**Note**: You can dismiss the sign-in by selecting **Cancel**. Close any other informational windows. Select **Apply Later**, if prompted to apply changes._

## Create a YTD measure

In this task, you'll create a sales year-to-date (YTD) measure by using time intelligence functions.

1. In Power BI Desktop, in Report view, on **Page 2**, notice the matrix visual that displays various measures with years and months grouped on the rows.

2. Add a measure to the `Sales` table, based on the following expression, and formatted to zero decimal places:

    ```dax
    Sales YTD =
    TOTALYTD(
        SUM(Sales[Sales]),
        'Date'[Date],
        "6-30"
    )
    ```

    > _The `TOTALYTD` function evaluates an expression—in this case the sum of the `Sales` column—over a given date column. The date column must belong to a date table marked as a date table._
    >
    > _The function can also take a third optional argument representing the last date of a year. The absence of this date means that December 31 is the last date of the year. For Adventure Works, June is in the last month of their year, and so "6-30" is used._

3. Add the `Sales` field and the `Sales YTD` measure to the matrix visual.

4. Notice the accumulation of sales values within the year.

    ![Picture 1](Linked_image_Files/06-use-dax-time-intelligence-functions_image21.png)

> _The `TOTALYTD` function performs filter manipulation, specifically time filter manipulation. For example, to compute YTD sales for September 2017 (the third month of the fiscal year), all filters on the `Date` table are removed and replaced with a new filter of dates commencing at the beginning of the year (July 1, 2017) and extending through to the last date of the in-context date period (September 30, 2017)._
>
> _Many [time intelligence functions](/dax/time-intelligence-functions-dax/?azure-portal=true) are available in DAX to support common time filter manipulations._

## Create a YoY growth measure

In this task, you'll create a sales YoY growth measure by using a variable.

> Variables help you simplify the formula and are more efficient if using the logic multiple times within a formula. Variables are declared with a unique name, and the measure expression must then be output after the `RETURN` keyword. Unlike some other coding language variables, DAX variables can only be used within the single formula._

1. Add another measure to the `Sales` table, based on the following expression:

    ```dax
    Sales YoY Growth =
    VAR SalesPriorYear =
        CALCULATE(
            SUM(Sales[Sales]),
            PARALLELPERIOD(
                'Date'[Date],
                -12,
                MONTH
            )
        )
    RETURN
        SalesPriorYear
    ```

    > _The `SalesPriorYear` variable is assigned an expression that calculates the sum of the `Sales` column in a modified context. That context uses the `PARALLELPERIOD` function to shift 12 months back from each date in filter context._

1. Add the `Sales YoY Growth` measure to the matrix visual.

1. Notice that the new measure returns `BLANK` for the first 12 months (because there were no sales recorded before fiscal year 2017).

1. Notice that the `Sales YoY Growth` measure value for _2018 Jul_ is the sales value for _2017 Jul_.

    ![Picture 2](Linked_image_Files/06-use-dax-time-intelligence-functions_image22.png)

    > _Now that the "difficult part" of the formula has been tested, you can overwrite the measure with the final formula that computes the growth result._

1. To complete the measure, overwrite the `Sales YoY Growth` measure with this formula, formatting it as a percentage with two decimal places:

    ```dax
    Sales YoY Growth =
    VAR SalesPriorYear =
        CALCULATE(
            SUM(Sales[Sales]),
            PARALLELPERIOD(
                'Date'[Date],
                -12,
                MONTH
            )
        )
    RETURN
        DIVIDE(
            (SUM(Sales[Sales]) - SalesPriorYear),
            SalesPriorYear
        )
    ```

1. In the formula, in the `RETURN` clause, notice that the variable is referenced twice.

1. Verify that the YoY growth for _2018 Jul_ is 392.83 percent.

    ![Picture 3](Linked_image_Files/06-use-dax-time-intelligence-functions_image23.png)

    > _The YoY growth measure identifies almost 400 percent (or 4x) increase of sales during the same period of the previous year._

1. In Model view, place the two new measures into a display folder named _Time intelligence_.

    ![Picture 4](Linked_image_Files/06-use-dax-time-intelligence-functions_image24.png)

1. Save the Power BI Desktop file.

## Lab complete
