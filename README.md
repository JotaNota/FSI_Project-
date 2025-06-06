# 📊 FSI Dataset – Transformation and Analysis
This project focuses on cleaning, transforming, and visualizing data related to the **Fragile States Index (FSI)**.

The goal is to prepare the dataset for **descriptive and visual analysis** on a **PowerBi** Dashboard.

**Tools used**  
- SQL Server 
- Python 
- Power BI will be used.

## 📑 Project Structure

- [Data](#-data)
- [SQL](#-sql)
    - [Normalization](#-normalization)

> *Additional folders (e.g., `output/`, `powerbi/`, `python/`) will be added in future branches.*

---

## 📂 Data

This folder contains:
- **raw/**: Original dataset in Excel format.
- **normalized/**: Cleaned and structured version (CSV).

---

## 📂 SQL
### 📌 Normalization

This folder contains scripts to transform the `FSI_RAW` table into a normalized format for analysis by standardizing column names and adjusting data types.

---

#### 1: Load dataset and rename original table

```sql
USE [FSI-PROJECT];
GO
EXEC sp_rename 'dbo.FSI_Raw$', 'FSI_RAW', 'OBJECT';
GO
```

#### 2: Create a copy of the original table

```sql
SELECT *
INTO FSI_NORMALIZED
FROM FSI_RAW;
```

#### 3 Change column names
```sql
-- Normalize column name
--Lower Case
EXEC sp_rename 'FSI_NORMALIZED.Country', 'country', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.year', 'year', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.Rank', 'rank', 'COLUMN';

-- Lower Case and underscore
EXEC sp_rename 'FSI_NORMALIZED.[Security Apparatus]', 'security_apparatus', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Factionalized Elites]', 'factionalized_elites', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Group Grievance]', 'group_grievance', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.Economy', 'economy', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Economic Inequality]', 'economic_inequality', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Human Flight and Brain Drain]', 'human_flight_and_brain_drain', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[State Legitimacy]', 'state_legitimacy', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Public Services]', 'public_services', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Human Rights]', 'human_rights', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Demographic Pressures]', 'demographic_pressures', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[Refugees and IDPs]', 'refugees_and_idps', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.[External Intervention]', 'external_intervention', 'COLUMN';
EXEC sp_rename 'FSI_NORMALIZED.total_fsi', 'total_fsi', 'COLUMN';

```

#### 4 Change the rank column data type (text → integer)
```sql
-- ► Step 1: Add a new column
ALTER TABLE FSI_NORMALIZED ADD rank_num INT;

-- ► Step 2: Extract original column number and convert it
UPDATE FSI_NORMALIZED
SET rank_num = TRY_CAST(LEFT(rank, PATINDEX('%[^0-9]%', rank + 'x') - 1) AS INT);

```






## Author

**JotaNota**  
[github.com/JotaNota](https://github.com/JotaNota)