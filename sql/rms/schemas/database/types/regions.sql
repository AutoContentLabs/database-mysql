-- File: regions.sql
-- Purpose: To define regions of the world using their respective ISO codes.
-- ========================================================================================================

CREATE TABLE regions (
    region_code CHAR(2) PRIMARY KEY COMMENT 'ISO code for the region (e.g., "EU" for Europe, "ME" for Middle East)',
    region_name VARCHAR(100) NOT NULL UNIQUE COMMENT 'Full name of the region (e.g., "Europe", "Middle East")'
);

