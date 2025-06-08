-- Create MEASUREMENT table 
-- This table contains factor score per country and year
CREATE TABLE [FSI-PROJECT].[dbo].[MEASUREMENT] (
    measurement_ID INT IDENTITY(1,1) PRIMARY KEY, -- PK
    index_ID INT, -- FK to FRAGILITY_INDEX
    factor_ID INT, -- FK to FACTORS
    value FLOAT, -- factor score
    FOREIGN KEY (index_ID) REFERENCES [FSI-PROJECT].[dbo].[FRAGILITY_INDEX](index_ID), 
    FOREIGN KEY (factor_ID) REFERENCES [FSI-PROJECT].[dbo].[FACTORS](factor_ID) 
);
