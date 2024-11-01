-- File: access_method_types.sql
-- Purpose: To define the methods of access for various data sources when they are requested.
-- =======================================================================================================

CREATE TABLE access_method_types (
    access_method_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for the access method; codes: 1 for free, 2 for open access, 3 for subscription',
    access_method_name VARCHAR(25) NOT NULL UNIQUE COMMENT 'Name of the access method (e.g., ''free'', ''open access'', ''subscription''); must be unique',
    access_method_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Detailed description of the access method; provides additional context about how the method works'
);