-- File: schema_types.sql
-- Purpose: To categorize data by their fundamental structures and define standards.
-- ========================================================================================================

CREATE TABLE schema_types (
    schema_type_code VARCHAR(10) PRIMARY KEY COMMENT 'Unique identifier for each schema type (e.g., TS:time_series,  HT:historical, RT: real_time, ...)',
    schema_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Standardized name of the schema type (e.g., time_series , historical , real_time )',
    schema_type_description TEXT NULL DEFAULT NULL COMMENT 'Description explaining the main concept of the schema (e.g., "A time series schema specifically for trend data from various platforms.")',
    schema_type JSON COMMENT 'JSON-B for JSON Schema validation. Standards defining the schema (e.g., {})',
    schema_type_reference JSON COMMENT 'JSON-B for JSON Schema validation. Reference usage of the schema standards (e.g., {})'
);
