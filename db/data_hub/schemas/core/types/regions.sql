-- File: regions.sql
-- Purpose: To define regions of the world using their respective ISO codes.
-- This table maps ISO region codes to their full names, enabling easy identification of geographical areas.
-- ========================================================================================================

CREATE TABLE regions (
    region_code CHAR(2) PRIMARY KEY COMMENT 'ISO code for the region (e.g., ''EU'' for Europe, ''ME'' for Middle East); must be unique',
    region_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Full name of the region (e.g., ''Europe'', ''Middle East''); must be unique and descriptive'
) COMMENT 'This table facilitates the categorization of regions by their ISO codes, enhancing data organization and retrieval.';