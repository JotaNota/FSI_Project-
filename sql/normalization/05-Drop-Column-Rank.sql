-- Replace Rank column

-- Drop Column
ALTER TABLE FSI_NORMALIZED DROP COLUMN rank;

-- Rename new column "rank"
EXEC sp_rename 'FSI_NORMALIZED .rank_num', 'rank', 'COLUMN';
