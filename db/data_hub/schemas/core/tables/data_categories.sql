-- File: data_categories.sql
-- Purpose: To define standardized data schemas for collecting various types of data from different sources.
-- This table will facilitate consistent data collection practices across diverse datasets.
-- ===========================================================

CREATE TABLE data_categories (
    data_category_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each data category schema',
    data_category_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Standardized name of the data category schema, must be unique',
    data_category_description VARCHAR(255) DEFAULT NULL COMMENT 'Detailed description of the data category, providing context and usage information',
    data_category_schema JSON NOT NULL COMMENT 'JSON structure for schema validation, representing the raw data structure used for data collection',
    data_category_reference JSON DEFAULT NULL COMMENT 'Reference usage for the schema, stored in JSON format for additional context',
    data_category_recommended_databases VARCHAR(50) DEFAULT NULL COMMENT 'Recommended compatible databases for the data category, e.g., Elasticsearch, InfluxDB, MySQL, PostgreSQL, MongoDB',
    schema_type_code VARCHAR(10) COMMENT 'Code to associate with schema types; references the schema_types table for validation'
    -- FOREIGN KEY (schema_type_code) REFERENCES schema_types(schema_type_code) ON DELETE SET NULL ON UPDATE CASCADE -- Ensures integrity with schema_types table
);
