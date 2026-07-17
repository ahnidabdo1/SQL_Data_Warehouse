/*
=============================================================
Create Database and Schemas
=============================================================
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Drop the database if it exists (terminating active connections first)
DROP DATABASE IF EXISTS "DataWarehouse" WITH (FORCE);

-- Create the 'DataWarehouse' database
CREATE DATABASE "DataWarehouse";

-- Connect to the newly created database 
-- (This is the Postgres equivalent of "USE DataWarehouse;")
\c "DataWarehouse"

-- Create Schemas
CREATE SCHEMA bronze_layer;
CREATE SCHEMA silver_layer;
CREATE SCHEMA gold_layer;
