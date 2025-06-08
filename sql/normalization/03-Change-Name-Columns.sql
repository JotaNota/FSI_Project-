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