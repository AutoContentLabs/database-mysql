-- File: regions.sql
-- Purpose: insert regions with ISO standart.
-- ========================================================================================================

-- Inserting initial data into the regions table
INSERT INTO regions (region_code, region_name)
VALUES
    ('AF', 'Africa'),          -- African continent
    ('AS', 'Asia'),            -- Asian continent
    ('EU', 'Europe'),         -- European continent
    ('ME', 'Middle East'),     -- Middle East
    ('NA', 'North America'),    -- North American continent
    ('SA', 'South America'),    -- South American continent
    ('OC', 'Oceania'),         -- Oceania
    ('AN', 'Antarctica')       -- Antarctica
;
