-- Create working table from raw dataset
CREATE OR REPLACE TABLE Agriculture AS
SELECT * FROM PowerBI.PBI_Data.PBI_Dataset;

-- Update rainfall values
UPDATE Agriculture
SET Rainfall = 1.1 * Rainfall;

-- Update area values
UPDATE Agriculture
SET Area = 0.9 * Area;

-- Add Year Group column
ALTER TABLE Agriculture
ADD Year_Group STRING;

-- Classify years into groups
UPDATE Agriculture
SET Year_Group = 'Y1'
WHERE Year BETWEEN 2004 AND 2009;

UPDATE Agriculture
SET Year_Group = 'Y2'
WHERE Year BETWEEN 2010 AND 2015;

UPDATE Agriculture
SET Year_Group = 'Y3'
WHERE Year BETWEEN 2016 AND 2019;

-- Add Rainfall Groups column
ALTER TABLE Agriculture
ADD Rainfall_Groups STRING;

-- Classify rainfall into categories
UPDATE Agriculture
SET Rainfall_Groups = 'Low'
WHERE Rainfall >= 255 AND Rainfall < 1200;

UPDATE Agriculture
SET Rainfall_Groups = 'Medium'
WHERE Rainfall >= 1200 AND Rainfall < 2800;

UPDATE Agriculture
SET Rainfall_Groups = 'High'
WHERE Rainfall >= 2800;

-- Final verification
SELECT * FROM Agriculture;
