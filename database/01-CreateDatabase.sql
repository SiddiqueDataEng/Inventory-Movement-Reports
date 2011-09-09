/*
 * Inventory Movement Reports
 * Project #93 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'InventoryReports')
BEGIN
    ALTER DATABASE InventoryReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE InventoryReports;
END
GO

CREATE DATABASE InventoryReports
ON PRIMARY
(
    NAME = 'InventoryReports_Data',
    FILENAME = 'C:\SQLData\InventoryReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'InventoryReports_Log',
    FILENAME = 'C:\SQLData\InventoryReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE InventoryReports SET RECOVERY SIMPLE;
ALTER DATABASE InventoryReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE InventoryReports;
GO

PRINT 'Database InventoryReports created successfully';
PRINT 'Project: Inventory Movement Reports';
PRINT 'Description: Stock flow visualization';
GO
