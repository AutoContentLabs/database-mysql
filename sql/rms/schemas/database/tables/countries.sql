-- File: countries.sql
-- Purpose: Defines the countries table schema to store information about various countries
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    countries (
        -- ISO standard country code; must be 2 characters and is the primary key
        country_code CHAR(2) PRIMARY KEY,
        -- Full name of the country; cannot be NULL
        country_name VARCHAR(100) NOT NULL
    );

-- NOTES: Considerations related to this table:
-- 1. Data Integrity: Ensure that country_code follows the ISO 3166-1 alpha-2 format.
-- 2. Indexing: The primary key on country_code automatically creates an index for efficient querying.