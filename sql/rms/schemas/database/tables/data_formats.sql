-- File: data_formats.sql
-- Purpose: Defines the schema_types table schema to store various data format types
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    data_formats (
        -- Unique identifier for each schema type
        data_format_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Name of the data format (e.g., 'json', 'xml'); must be unique and cannot be null
        data_format_name VARCHAR(50) NOT NULL UNIQUE,
        -- Description of the data format; provides additional details
        data_format_description TEXT
    );

-- NOTES: Considerations related to this table:
-- 1. Ensure that data_format_name is unique to prevent duplication of schema types.
-- 2. Consider indexing data_format_name for improved search performance.