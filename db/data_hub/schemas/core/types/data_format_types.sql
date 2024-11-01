-- File: data_format_types.sql
-- Purpose: To define general formats of data, typically similar to file types.
-- This table allows for the identification and description of various data formats used in the system.
-- ========================================================================================================

CREATE TABLE data_format_types (
    data_format_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each data format (e.g., 1: json, 2: xml, 3: csv, 4: html)',
    data_format_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the data format (e.g., ''json'', ''xml'', ''csv'', ''html''); must be unique and descriptive',
    data_format_description VARCHAR(255) DEFAULT NULL COMMENT 'Detailed description of the data format; can include usage, compatibility, and examples'
) COMMENT 'This table facilitates the addition of various data formats from different data sources, ensuring flexibility in format handling.';