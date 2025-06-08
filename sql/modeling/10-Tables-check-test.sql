-- ► 01 Check 
--Total number of countries
SELECT COUNT(*) AS total_countries FROM [FSI-PROJECT].[dbo].[COUNTRY];

--01- Count how many countries have at least one factor
SELECT COUNT(DISTINCT c.country_ID) AS countries_with_factors
FROM [FSI-PROJECT].[dbo].[COUNTRY] c
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID
JOIN [FSI-PROJECT].[dbo].[MEASUREMENT] m ON m.index_ID = fi.index_ID;


-- ► 02. Check index_ID has 12 factors
-- Total number of index_ID entrie
SELECT COUNT(*) AS total_index_entries 
FROM [FSI-PROJECT].[dbo].[FRAGILITY_INDEX];

-- Count how many index_ID entries are complete (i.e., have 12 factor)
SELECT COUNT(*) AS complete_index_entries
FROM (
    SELECT fi.index_ID
    FROM [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi
    JOIN [FSI-PROJECT].[dbo].[MEASUREMENT] m ON fi.index_ID = m.index_ID
    GROUP BY fi.index_ID
    HAVING COUNT(*) = (
        SELECT COUNT(*) FROM [FSI-PROJECT].[dbo].[FACTORS]
    )
) AS sub;


-- ► 03 Create a view for analysis: country + year + factor + value + total_FSI
CREATE VIEW dbo.FRAGILITY_ANALYSIS_VIEW AS
SELECT
    c.country,
    c.continent,
    c.iso,
    c.latitude,
    c.longitude,
    fi.year,
    fi.rank,
    fi.total_FSI,
    fi.level,
    f.factor_name,
    m.value
FROM [FSI-PROJECT].[dbo].[MEASUREMENT] m
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON m.index_ID = fi.index_ID
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON fi.country_ID = c.country_ID
JOIN [FSI-PROJECT].[dbo].[FACTORS] f ON m.factor_ID = f.factor_ID;

SELECT * 
FROM [FSI-PROJECT].[dbo].[FRAGILITY_ANALYSIS_VIEW] 
WHERE country = 'Argentina' AND year = 2010;

SELECT *
FROM dbo.FRAGILITY_ANALYSIS_VIEW
WHERE iso = 'AR' AND year = 2010;
