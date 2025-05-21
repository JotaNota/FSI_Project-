-- Create column nivel accoring to total_fsi
--
ALTER TABLE FSI_NORMALIZED
ADD nivel NVARCHAR(10);

UPDATE FSI_NORMALIZED
SET nivel =  
    CASE  
        WHEN total <= 40 THEN 'Bajo'
        WHEN total <= 80 THEN 'Medio'
        ELSE 'Alto'
    END;	

	select *
	from dbo.FSI_NORMALIZED

	SELECT nivel, COUNT(*) AS cantidad
FROM FSI_NORMALIZED
GROUP BY nivel
ORDER BY nivel;
