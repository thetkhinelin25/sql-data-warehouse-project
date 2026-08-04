/*==============================================================
  Script: Create Data Warehouse Database and Schemas

  Description:
  This script creates the DataWarehouse database and the three
  schemas used in the Medallion Architecture:
      - bronze : Raw data imported from source systems.
      - silver : Cleaned and transformed data.
      - gold   : Business-ready data for reporting and analytics.

  The script is idempotent, meaning it can be executed multiple
  times without causing errors if the database or schemas already
  exist.
==============================================================*/

USE master;
GO

--------------------------------------------------------------
-- Create the DataWarehouse database if it does not already exist.
--------------------------------------------------------------
IF DB_ID('DataWarehouse') IS NULL
BEGIN
    CREATE DATABASE DataWarehouse;
END
GO

--------------------------------------------------------------
-- Switch to the DataWarehouse database.
--------------------------------------------------------------
USE DataWarehouse;
GO

--------------------------------------------------------------
-- Create the Bronze schema for storing raw source data.
--------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'bronze'
)
BEGIN
    EXEC('CREATE SCHEMA bronze');
END
GO

--------------------------------------------------------------
-- Create the Silver schema for storing cleaned and transformed data.
--------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'silver'
)
BEGIN
    EXEC('CREATE SCHEMA silver');
END
GO

--------------------------------------------------------------
-- Create the Gold schema for storing business-ready data models.
--------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'gold'
)
BEGIN
    EXEC('CREATE SCHEMA gold');
END
GO


