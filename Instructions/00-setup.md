---
lab:
    title: 'Setup your own environment'
    module: 'Setup your own environment'
---

# Setup local lab environment

- All setup and resource files can be [downloaded from GitHub](https://github.com/MicrosoftLearning/PL-300-Microsoft-Power-BI-Data-Analyst/raw/Main/Allfiles/AllfilesDownload.zip).

Ideally, you should complete these labs in a hosted lab environment. If you want to complete them on your own computer, you can do so by installing the following software.

***You may experience unexpected dialogs and behavior when using your own environment. Due to the wide range of possible local configurations, the course team cannot support issues you may encounter in your own environment.***

## Instructions using Windows 11

> &#128221; The instructions below are for a Windows 11 computer. Connecting from a different OS may not result in the same experience.

<!--- 
--- Do we really need to include this? Just tell them to use Windows.
### Windows 11 (OS)

1. Install Windows 11.

2. Apply all available updates.

--- Verify if they need SSMS or just install
### SQL Server Management Studio

1. Download and install from [https://aka.ms/ssmsfullsetup].

    - Use the default options in the installer.
--->

### SQL Server Database Engine

1. The lab connects to a localhost SQL Server instance. The following instructions will help you install SQL Server and configure the default options. You only need to install the Database Engine feature.

    - Download the free [Developer copy of install media](https://www.microsoft.com/sql-server/sql-server-downloads?SilentAuth=1&f=255&MSPPError=-2147217396&rtc=1)
    - [Install SQL Server from the Installation Wizard (Setup)](https://learn.microsoft.com/sql/database-engine/install-windows/install-sql-server-from-the-installation-wizard-setup)

> &#128221; You can use an existing SQL Server instance if you have access, instead of installing a local version. However, you'll need to modify the connection string from "localhost" to your instance name.

### Power BI Desktop

1. Download and install from the Microsoft store. If you do not have access to the Microsoft store, download from the [web](https://www.microsoft.com/download/details.aspx?id=58494). Power BI Desktop is the primary application for these labs.

    - Use the default options in the installer.

### Microsoft Edge

1. Install the latest version of [Microsoft Edge](https://microsoft.com/edge) to access Power BI service online.