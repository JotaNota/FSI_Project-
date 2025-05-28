-- Insert data into FRAGILITY_INDEX 
-- Joining country_ID from COUNTRY
INSERT INTO [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] (country_ID, year, rank, total_FSI, level)
SELECT
    c.country_ID, -- FK to COUNTRY
    f.year,
    f.rank,
    f.total_FSI,
    f.level 
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] f
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c
    ON f.country = c.country -- match country names
   AND f.continent = c.continent; --  match for safety
