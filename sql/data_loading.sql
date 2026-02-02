-- Create Database
CREATE DATABASE IF NOT EXISTS PowerBI;

-- Create Schema
CREATE SCHEMA IF NOT EXISTS PowerBI.PBI_Data;

-- Create Table
CREATE OR REPLACE TABLE PowerBI.PBI_Data.PBI_Dataset (
    Year INT,
    Location STRING,
    Area INT,
    Rainfall FLOAT,
    Temperature FLOAT,
    Soil_type STRING,
    Irrigation STRING,
    yeilds INT,
    Humidity FLOAT,
    Crops STRING,
    price INT,
    Season STRING
);

-- Create Stage
CREATE OR REPLACE STAGE PowerBI.PBI_Data.pbi_stage
URL = 's3://powerbi.project'
STORAGE_INTEGRATION = PBI_Integration;

-- Load Data from S3
COPY INTO PowerBI.PBI_Data.PBI_Dataset
FROM @pbi_stage
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ',' SKIP_HEADER = 1)
ON_ERROR = 'CONTINUE';

-- Verify Data
SELECT * FROM PowerBI.PBI_Data.PBI_Dataset;
