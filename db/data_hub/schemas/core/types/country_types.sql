-- File: country_types.sql
-- Purpose: To store a list of countries according to ISO 3166-1 alpha-2 standards.
-- =======================================================================================================

CREATE TABLE country_types (
    country_code CHAR(2) PRIMARY KEY COMMENT 'Unique ISO 3166-1 alpha-2 country code (e.g., "US", "TR", "CN")',
    country_name VARCHAR(100) NOT NULL COMMENT 'Full name of the country (e.g., "United States of America")'
);
