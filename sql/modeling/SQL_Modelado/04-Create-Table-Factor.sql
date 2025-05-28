-- Create FACTORS table 
-- This table contains factor names
CREATE TABLE [FSI-PROJECT].[dbo].[FACTORS] (
    factor_ID INT IDENTITY(1,1) PRIMARY KEY, -- pk
    factor_name NVARCHAR(100) 
);
