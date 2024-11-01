-- File: access_types.sql
-- Purpose: To define the subcategories of access types for various data sources.
-- =======================================================================================================

CREATE TABLE access_types (
    access_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for the access type; codes: 1 for API, 2 for RSS, 3 for HTML scraping',
    access_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the access type (e.g., ''API'', ''RSS'', ''Scraping''); must be unique',
    access_type_description VARCHAR(255) COMMENT 'Detailed description of the access type; provides context on its usage and capabilities'
);