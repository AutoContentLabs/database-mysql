-- File: regions.sql
-- Purpose: Defines the regions table schema to store information about geographic regions
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    regions (
        -- Unique identifier for each region; region code
        region_code CHAR(2) PRIMARY KEY,
        -- Full name of the region; cannot be null
        region_name VARCHAR(100) NOT NULL
    );

-- NOTES: Considerations related to this table:
-- 1. Ensure that region_code is unique to prevent duplication of regions.
-- 2. Indexing region_name could be beneficial for search queries that filter by region name.