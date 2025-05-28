-- Populating data into COUNTRY table
INSERT INTO [FSI-PROJECT].[dbo].[COUNTRY] (country, continent, ISO, latitude, longitude)
SELECT DISTINCT
    country,
    continent, 
    iso, -- ISO 3
    latitude, 
    longitude 
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING]; 
