-- Create  FRAGILITY_INDEX 
-- This table stores yearly FSI index per country
CREATE TABLE [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] (
    index_ID INT IDENTITY(1,1) PRIMARY KEY, -- PK
    country_ID INT, -- FK to COUNTRY table
    year INT, 
    rank INT, 
    total_FSI FLOAT, 
    level NVARCHAR(50), 
    FOREIGN KEY (country_ID) REFERENCES [FSI-PROJECT].[dbo].[COUNTRY](country_ID) 
);


