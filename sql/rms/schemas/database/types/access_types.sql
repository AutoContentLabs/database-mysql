-- File: access_types.sql
-- Purpose: To define the subcategories of access types for various data sources.
-- =======================================================================================================

CREATE TABLE access_types (
    access_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for the access type; 1: API, 2: RSS, 3: HTML scraping',
    access_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the access type (e.g., API, RSS, Scraping)',
    access_type_description TEXT COMMENT 'Detailed description of the access type'
);

