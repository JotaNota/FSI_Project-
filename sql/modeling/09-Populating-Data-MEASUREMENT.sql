--01. Insert Security_apparatus
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT
    fi.index_ID, -- FK to FRAGILITY_INDEX
    fct.factor_ID, -- FK to FACTORS
    src.security_apparatus -- factor value
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c
    ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi
    ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct
    ON fct.factor_name = 'security_apparatus'; -- match name


--02. Insert Factionalized_elites
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.factionalized_elites
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'factionalized_elites';

--03. Insert group_grievance 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.group_grievance
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'group_grievance';

--04. Insert economy 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.economy
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'economy';

--05. Insert economic_inequality 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.economic_inequality
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'economic_inequality';

--06. Insert human_flight_and_brain_drain 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.human_flight_and_brain_drain
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'human_flight_and_brain_drain';

--07. Insert state_legitimacy 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.state_legitimacy
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'state_legitimacy';

--08. Insert public_services 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.public_services
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'public_services';

--09. Insert human_rights 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.human_rights
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'human_rights';

--10. Insert demographic_pressures
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.demographic_pressures
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'demographic_pressures';

--11. Insert refugees_and_idps 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.refugees_and_idps
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'refugees_and_idps';

--12 Insert external_intervention 
INSERT INTO [FSI-PROJECT].[dbo].[MEASUREMENT] (index_ID, factor_ID, value)
SELECT fi.index_ID, fct.factor_ID, src.external_intervention
FROM [FSI-PROJECT].[dbo].[FSI_SQL_MODELING] src
JOIN [FSI-PROJECT].[dbo].[COUNTRY] c ON src.country = c.country AND src.continent = c.continent
JOIN [FSI-PROJECT].[dbo].[FRAGILITY_INDEX] fi ON fi.country_ID = c.country_ID AND fi.year = src.year
JOIN [FSI-PROJECT].[dbo].[FACTORS] fct ON fct.factor_name = 'external_intervention';