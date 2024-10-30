-- File: access_method_types.sql
-- Purpose: To define the methods of access for various data sources when they are requested.
-- =======================================================================================================

CREATE TABLE access_method_types (
    access_method_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for the access method; 1: free, 2: open_access, 3: subscription',
    access_method_name VARCHAR(25) NOT NULL UNIQUE COMMENT 'Name of the access method (e.g., free, open_access, subscription)',
    access_method_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of the access method'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to define types of access methods for data sources';
