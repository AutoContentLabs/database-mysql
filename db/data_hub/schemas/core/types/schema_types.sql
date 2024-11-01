-- File: schema_types.sql
-- Purpose: To categorize data by their fundamental structures and define standards.
-- This table establishes various schema types used for organizing and validating data structures.
-- ========================================================================================================

CREATE TABLE schema_types (
    schema_type_code VARCHAR(10) PRIMARY KEY COMMENT 'Unique identifier for each schema type (e.g., ''TS'' for time_series, ''HT'' for historical, ''RT'' for real_time)',
    schema_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Standardized name of the schema type (e.g., ''time_series'', ''historical'', ''real_time''); must be unique',
    schema_type_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Description explaining the main concept of the schema (e.g., ''A time series schema specifically for trend data from various platforms.'')',
    schema_type JSON COMMENT 'JSON-B for JSON Schema validation. Defines the structure and constraints of the schema (e.g., {})',
    schema_type_reference JSON COMMENT 'JSON-B for JSON Schema validation. Provides reference usage of the schema standards (e.g., {})'
) COMMENT 'This table serves as a reference for data_category, facilitating the organization and validation of various data structures.';