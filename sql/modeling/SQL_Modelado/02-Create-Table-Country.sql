-- Create Country table
CREATE TABLE [FSI-PROJECT].[dbo].[COUNTRY] (
    country_ID INT IDENTITY(1,1) PRIMARY KEY, -- PK, auto-increment
    country NVARCHAR(100), 
    continent NVARCHAR(50), 
    ISO CHAR(3), -- ISO 3
    latitude FLOAT,
    longitude FLOAT 
);

