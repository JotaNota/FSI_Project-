
--04.Change the rank column data type 

-- 
ALTER TABLE FSI_NORMALIZED ADD rank_num INT;

--
UPDATE FSI_NORMALIZED
SET rank_num = TRY_CAST(LEFT(rank, PATINDEX('%[^0-9]%', rank + 'x') - 1) AS INT);
