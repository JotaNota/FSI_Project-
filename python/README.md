# 📘 SQL Table Enrichment with python

### Overview

This branch contains two Jupyter Notebooks used to enrich the `FSI_NORMALIZED_PY` table in a SQL Server database with relevant geographic information.

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


