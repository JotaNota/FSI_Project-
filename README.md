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
- [Python](#-python)
  - [Add_Continent.ipynb](#-Add_Continent.ipynb)
  - [Add_ISO_Lat_Long.ipynb](#-Add_ISO_Latitude_Longitude.ipynb)

> *Additional folders (e.g., `output/`, `powerbi/`,) will be added in future branches.*

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

## 📂Python
 ### 📌 Notebooks
This folder contains two Jupyter Notebooks used to enrich a new copy of the table we are working on, called table `FSI_NORMALIZED_PY` in a SQL Server database with relevant geographic information.

The process is divided into two parts:

---

### ► [`Add_Continent.ipynb`](./python/notebooks/Add_Continent.ipynb)

- Connects to the SQL Server database.
- Extracts a distinct list of countries from the `FSI_NORMALIZED_PY` table.
- Uses the `country_converter` library to map each country to a continent.
- Updates the `continent` column in SQL for all matching countries.

---

### ► [`Add_ISO_Latitude_Longitude.ipynb`](./python/notebooks/Add_ISO_Latitude_Longitude.ipynb)

- Fetches country metadata from Google’s dataset.
- Standardizes country names and joins them with the SQL List.
- Validates ISO  and filter valid rows.
- Updates the `iso`, `latitude`, and `longitude` columns in the SQL table.

---

### ⚠️ Note

These scripts are part of a quick and pragmatic solution to enrich the database with the geographic data needed for this specific project.

In a future iteration, I'll try to perform a deeper analysis of country naming inconsistencies, improve matching accuracy, and refine data quality.


---

## Author

**JotaNota**  
[github.com/JotaNota](https://github.com/JotaNota)