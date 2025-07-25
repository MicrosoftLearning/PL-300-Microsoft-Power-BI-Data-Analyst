---
lab:
    title: 'Create workspaces and distribute reports using Power BI'
    module: 'Distribute Power BI reports and dashboards'
---

# Create workspaces and distribute reports using Power BI

## Lab story

In this lab, you'll learn how to create workspaces, upload reports, and distribute them through Power BI apps. You'll explore the differences between direct report sharing and app distribution, including how to create sections and manage different audiences.

In this lab, you learn how to:

- Create a new workspace in Power BI service.
- Upload and publish a PBIX file to the workspace.
- Explore published reports within the workspace.
- Share reports directly with links.
- Create a Power BI app with sections.
- Configure different audiences for app distribution.
- Publish the app and understand the differences between app and direct report access.

**This lab should take approximately 45 minutes.**

## Get started

To complete this exercise, first open a web browser and enter the following URL to download the zip folder:

`https://github.com/MicrosoftLearning/PL-300-Microsoft-Power-BI-Data-Analyst/raw/Main/Allfiles/Labs/13-create-workspaces-distribute-reports/13-workspace-app-distribution.zip`

Extract the folder to the **C:\Users\Student\Downloads\13-workspace-app-distribution** folder.

> _**Note**: You'll need at least a **Power BI Pro** license or access to Power BI Premium per user to create workspaces and publish apps. Open the Microsoft Edge browser, then sign in at `https://app.powerbi.com`. When asked to solve a puzzle, or to start a free Fabric trial, you can skip this and close the browser._

## **Create a new workspace**

In this task, you'll create a new workspace that will serve as a collaborative environment for your reports and dashboards.

1. In the Microsoft Edge browser window, navigate to the Power BI service at `https://app.powerbi.com`.

1. In the left navigation pane, select **Workspaces**.

1. Select **+ New workspace**.

    ![Screenshot of creating a new workspace](Linked_image_Files/13-create-workspaces-distribute-reports_image01.png)

1. In the **Create a workspace** pane, configure the following settings:

    - **Workspace name**: Enter **Sales Analytics Workspace**
    - **Description**: Enter **Workspace for sales analytics reports and dashboards**
    - **Advanced**: Leave the default settings

1. Select **Save**.

    > *The new workspace will be created and opened. You'll notice it's currently empty.*

## **Upload and publish the report**

In this task, you'll upload a PBIX file to your new workspace and explore the published report.

1. In the **Sales Analytics Workspace**, select **Import** then **Report, Paginated Report, or Workbook** and **From this computer**. 

1. Navigate to **C:\Users\Student\Downloads\13-workspace-app-distribution** folder.

1. Select the **13-Starter-Sales Analysis.pbix** file, and then select **Open**.

    > *If prompted to replace the semantic model, select **Replace it**.*

1. Once the upload is complete, notice that the workspace now contains:
    - A report named **13-Starter-Sales Analysis**
    - A semantic model with the same name
    - <!-- A dasbhoard with the same name | why?? --> 

    ![Screenshot of workspace with uploaded content](Linked_image_Files/13-create-workspaces-distribute-reports_image02.png)

## **Explore the published report**

In this task, you'll explore the report within the workspace and understand the workspace environment.

1. In the workspace, select the **13-Starter-Sales Analysis** report to open it.

1. Explore the different pages of the report by selecting the page tabs in the **Pages** navigation pane.

1. In the top menu bar, observe the various options available for sharing and managing the report.

## **Share the report with a direct link**

In this task, you'll learn how to share a report directly before creating an app, and understand the implications of direct sharing.

1. While viewing the **13-Starter-Sales Analysis** report, select **Share** from the top menu bar.

    ![Screenshot of share button](Linked_image_Files/13-create-workspaces-distribute-reports_image03.png)

1. In the **Send link** dialog box, notice the following options:
    - **People in your organization**: Default setting can be changed
    - **Enter a name of email address**: Choose select individuals or groups
    - **Copy link**: Provides a direct link to the report
    - **Mail**
    - *Teams**
    - **PowerPoint**
  
**Link settings**: Allows you to configure permissions

1. Select **People in your organization** to configure the default sharing permissions.

1. Notice there are two additional options that are only available if sharing with people in your organization.
    - **Allow recipients to share this report**
    - **Allow recipients to build content with the data associated with this report**

1. Select **Apply** and then **Copy link** from the Send link box and Copy the link. 

1. Open a new browser tab (or incognito window) and paste the link to see how external users would access the report.

    > *Note the URL structure - it points directly to the report in the workspace, therefore the navigation pane includes "Workspaces, OneLake, Metrics," and other features report consumers might not be interested in.*

1. Return to the original browser tab and close the **Share report** dialog by selecting **Cancel**.

## **Create a Power BI app**

In this task, you'll create a Power BI app to provide a better distribution experience for your reports.

1. Navigate back to the **Sales Analytics Workspace** by selecting **Workspaces** in the left navigation and then selecting your workspace.

1. In the workspace, select **Create app** from the top menu bar.

    ![Screenshot of create app button](Linked_image_Files/13-create-workspaces-distribute-reports_image04.png)

1. In the **Create an app** wizard, you'll see three tabs: **Setup**, **Navigation**, and **Permissions**.

### Configure App Setup

1. On the **Setup** tab, configure the following:
    - **App name**: Enter **Sales Analytics Reporting App**
    - **Description**: Enter **Comprehensive sales analytics and reporting application**
    - **App logo**: You can upload a logo if desired (optional)
    - **App theme color**: Select a color that represents your organization (optional)

1. Select **Next: Add content** to continue configuration.

### Configure App Navigation

1. Select **Add content**, choose the **13-Starter-Sales Analysis** report, and **Add**.

1. In the drop-down arrow in the **Add content** button, you can **Add a new section** and **Add a link**.

    > These allow you to separate and group similar items, as well as provide relevant links to support your reporting needs.

1. Select **Add a new section** and rename the section **Sales Reports** by using the ellipsis `...` or double-clicking.

1. Drag the **13-Starter-Sales Analysis** report into the **Sales Reports** section.

    ![Screenshot of app navigation configuration](Linked_image_Files/13-create-workspaces-distribute-reports_image05.png)

1. Select **Next: Add audience** to configure permissions.

### Configure App Permissions and Audiences

Audiences are the people who can access your app. You can create multiple audiences and show or hide different content based on each one.

1. The default audience has visibility to the report you selected and all report pages.

1. Use the **eye icon** to remove access to the report and notice how the section also disappears.

1. Toggle the eye icon again to allow report access.

1. In the **Edit Audience** pane, select **Entire organization**.

1. Expand the **Advanced** section and notice two additional options:

    - Allow people to share the datasets in this app audience
    - Allow people to build content with the datasets in this app audience

    > *These options are the same that were avaiable in the direct sharing link for the report, but may not apply to certain business users. The availability of multiple audiences lets you control which users can perform these actions, if desired.*

1. Notice the **Audiences** section. Select **+ New Audience** to create different audiences with different access levels.

1. Create an audience called **Sales Team** with the following settings:
    - **Audience name**: Report developers
    - **Description**: Sales team members with full access
    - **Members**: Add relevant users or groups
    - **Allow people to share the datasets in this app audience**
    - **Allow people to build content with the datasets in this app audience**

1. Review all settings and select **Publish app**.

## **Test the published app**

In this task, you'll test the published app and compare it to direct report access.

1. After the app is published, you'll see a success message with options to:
    - **Go to app**: View the app as end users would see it
    - **Manage app**: Return to app management settings

1. Select **Go to app** to see the end-user experience.

1. Notice the following differences from the direct report link:
    - **Branded experience**: The app shows your custom name, description, and branding
    - **Organized content**: Content is organized in the sections you created
    - **Consistent experience**: Users always see the same navigation and layout
    - **Clean navigation**: The Power BI navigation pane for Workspaces and other options isn't visible.

1. Navigate through the app content using the left navigation panel.

1. Compare this experience to opening the direct report link you copied earlier.

## **Manage and update the app**

In this task, you'll learn how to manage and update your published app.

1. Return to the **Sales Analytics Workspace**.

1. Notice that the workspace now shows it's connected to an app (indicated by an app icon).

1. To update the app, select **Update app** from the workspace menu.

1. You can:
    - Add new content to the workspace
    - Reorganize app navigation
    - Update permissions and audiences
    - Republish the app with changes

1. Make a small change (such as updating the app description) and republish to see how updates work.

    > *Changes made to the workspace are not reflected in the app until you **Update app**. This is very useful for development before publishing for usage; however, this step can be overlooked and confusing when your changes don't appear in the app.*

## **Compare access methods**

In this final task, you'll document the key differences between the access methods you've explored.

1. Create a comparison of the three access methods:

    | Access Method | URL Type | User Experience | Management | Best Used For |
    |---------------|----------|-----------------|------------|---------------|
    | **Workspace Direct** | workspace-specific | Full workspace access | Individual permissions | Collaboration team |
    | **Report Link** | report-specific | Direct to content | Share dialog | Quick sharing |
    | **Power BI App** | app-specific | Branded, organized | Centralized app management | End-user distribution |

1. Test each access method to confirm the differences:
    - Navigate to the workspace directly
    - Use the report sharing link
    - Access through the published app

## **Summary**

In this lab, you've learned how to:

- Create and manage Power BI workspaces for collaboration
- Upload and publish PBIX files to workspaces
- Share reports directly using links
- Create and configure Power BI apps with sections and audiences
- Understand the differences between various sharing and distribution methods
- Manage and update published apps

The key takeaway is that Power BI apps provide the best experience for distributing content to end users, while direct sharing and workspace access are better suited for collaboration and quick sharing scenarios.

> **Note**: Power BI apps require Power BI Pro licenses for both creators and consumers, or Premium capacity. Always consider licensing requirements when planning your distribution strategy.
