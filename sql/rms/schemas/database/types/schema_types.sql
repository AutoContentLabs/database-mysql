-- File: schema_types.sql
-- Purpose: To categorize data by their fundamental structures and define standards.
-- ========================================================================================================

CREATE TABLE schema_types (
    schema_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each schema type (1: time_series, 2: historical, 3: aggregated, 4: categorical, 5: text)',
    schema_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Standardized name of the schema type (e.g., "TimeSeries" or "time_series")',
    schema_type_description TEXT NULL DEFAULT NULL COMMENT 'Description explaining the main concept of the schema (e.g., "A time series schema specifically for trend data from various platforms.")',
    schema_type JSON COMMENT 'Standards defining the schema (e.g., {})',
    schema_type_reference JSON COMMENT 'Reference usage of the schema standards (e.g., {})'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table storing various schema types with their definitions and standards';
