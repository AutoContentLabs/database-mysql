-- File: data_format_types.sql
-- Purpose: To define general formats of data, typically similar to file types.
-- ========================================================================================================

CREATE TABLE data_format_types (
    data_format_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each data format (e.g., 1: json, 2: xml, 3: csv, 4: html)',
    data_format_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the data format (e.g., json, xml, csv, html)',
    data_format_description TEXT DEFAULT NULL COMMENT 'Detailed description of the data format'
);

