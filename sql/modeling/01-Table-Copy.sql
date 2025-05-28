-- Create a copy of the table FSI_NORMALIZED_PY
SELECT *
INTO [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] 
FROM [FSI-PROJECT].[dbo].[FSI_NORMALIZED_PY]; 


-- Rename column 'Total' to 'total_FSI'
EXEC sp_rename 
    'FSI_SQL_MODELING.Total',
    'total_FSI',
    'COLUMN'; 
