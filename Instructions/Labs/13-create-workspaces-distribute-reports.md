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

1. In the **Sales Analytics Workspace**, select **+ New** and then **Import Report**.

1. Select **Browse**.

1. Navigate to **C:\Users\Student\Downloads\13-workspace-app-distribution** folder.

1. Select the **13-Starter-Sales Analysis.pbix** file, and then select **Open**.

    > *If prompted to replace the semantic model, select **Replace it**.*

1. Once the upload is complete, notice that the workspace now contains:
    - A report named **13-Starter-Sales Analysis**
    - A semantic model with the same name

    ![Screenshot of workspace with uploaded content](Linked_image_Files/13-create-workspaces-distribute-reports_image02.png)

## **Explore the published report**

In this task, you'll explore the report within the workspace and understand the workspace environment.

1. In the workspace, select the **13-Starter-Sales Analysis** report to open it.

1. Explore the different pages of the report by selecting the page tabs at the bottom.

1. Notice the workspace name displayed in the top navigation, showing you're viewing the report within the **Sales Analytics Workspace**.

1. In the top menu bar, observe the various options available for sharing and managing the report.

## **Share the report with a direct link**

In this task, you'll learn how to share a report directly before creating an app, and understand the implications of direct sharing.

1. While viewing the **13-Starter-Sales Analysis** report, select **Share** from the top menu bar.

    ![Screenshot of share button](Linked_image_Files/13-create-workspaces-distribute-reports_image03.png)

1. In the **Share report** dialog, notice the following options:
    - **People in your organization**: You can enter email addresses
    - **Copy link**: Provides a direct link to the report
    - **Link settings**: Allows you to configure permissions

1. Select **Copy link** to copy the direct report link.

1. Open a new browser tab (or incognito window) and paste the link to see how external users would access the report.

    > *Note the URL structure - it points directly to the report in the workspace.*

1. Return to the original browser tab and close the **Share report** dialog by selecting **Cancel**.

## **Create a Power BI app**

In this task, you'll create a Power BI app to provide a better distribution experience for your reports.

1. Navigate back to the **Sales Analytics Workspace** by selecting **Workspaces** in the left navigation and then selecting your workspace.

1. In the workspace, select **Create app** from the top menu bar.

    ![Screenshot of create app button](Linked_image_Files/13-create-workspaces-distribute-reports_image04.png)

1. In the **Create an app** wizard, you'll see three tabs: **Setup**, **Navigation**, and **Permissions**.

### Configure App Setup

1. On the **Setup** tab, configure the following:
    - **App name**: Enter **Sales Analytics App**
    - **Description**: Enter **Comprehensive sales analytics and reporting application**
    - **App logo**: You can upload a logo if desired (optional)
    - **App theme color**: Select a color that represents your organization

1. Select **Next** to go to the **Navigation** tab.

### Configure App Navigation

1. On the **Navigation** tab, you'll organize how users navigate through your app content.

1. Notice that the **13-Starter-Sales Analysis** report is already listed in the content area.

1. To create a section, select **+ New section**.

1. Name the section **Sales Reports**.

1. Drag the **13-Starter-Sales Analysis** report into the **Sales Reports** section.

    ![Screenshot of app navigation configuration](Linked_image_Files/13-create-workspaces-distribute-reports_image05.png)

1. You can reorder items by dragging them, and you can rename items by selecting them and editing the name.

1. Select **Next** to go to the **Permissions** tab.

### Configure App Permissions and Audiences

1. On the **Permissions** tab, you'll set up who can access your app.

1. In the **Permissions** section, notice the options:
    - **Entire organization**: Makes the app available to everyone in your organization
    - **Specific individuals or groups**: Allows you to specify particular users or groups

1. For this lab, select **Specific individuals or groups**.

1. In the **Enter names or email addresses** box, add yourself and any test users if available.

1. Notice the **Audiences** section. Select **+ Create audience** to create different audiences with different access levels.

1. Create an audience called **Sales Team** with the following settings:
    - **Audience name**: Sales Team
    - **Description**: Sales team members with full access
    - **Members**: Add relevant users or groups

1. You can create additional audiences for different user groups (e.g., "Executives", "Regional Managers") with different content access.

1. Review all settings and select **Publish app**.

## **Test the published app**

In this task, you'll test the published app and compare it to direct report access.

1. After the app is published, you'll see a success message with options to:
    - **Go to app**: View the app as end users would see it
    - **Manage app**: Return to app management settings

1. Select **Go to app** to see the end-user experience.

1. Notice the following differences from the direct report link:
    - **Cleaner URL**: The app has a more user-friendly URL structure
    - **Branded experience**: The app shows your custom name, description, and branding
    - **Organized navigation**: Content is organized in the sections you created
    - **Consistent experience**: Users always see the same navigation and layout

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