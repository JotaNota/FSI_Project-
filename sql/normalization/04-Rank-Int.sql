
--04.Change the rank column data type 

-- 
ALTER TABLE FSI_NORMALIZED ADD rank_num INT;

--
UPDATE FSI_NORMALIZED
SET rank_num = TRY_CAST(LEFT(rank, PATINDEX('%[^0-9]%', rank + 'x') - 1) AS INT);

select *
from dbo.FSI_NORMALIZED


SELECT DISTINCT rank, rank_num
FROM FSI_NORMALIZED
ORDER BY rank_num;
