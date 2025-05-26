/*
================================================================================
Create Database and Schemas
================================================================================
Script Purpose:
    This script create a database called 'DataWarehouse' after checking if it already exist.
If it already exist, the database will be dropped and recreated, Additionally the script will create three schemas within the database
called 'bronze','silver' and 'gold'

Warning:
    


*/

USE MASTER
  GO
  
-- Drop and Recreate the 'DateWarehouse' Database
IF EXIST(SELECT I FROM sys.databases WHERE name ='DataWarehouse')
BEGIN
   ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO

-- Create Schema bronze
CREATE SCHEMA bronze;
GO

-- Create Schema sivler
CREATE SCHEMA silver;
GO

-- Create Schema gold
CREATE SCHEMA gold;
GO

