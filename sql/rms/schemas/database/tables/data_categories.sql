-- File: data_categories.sql
-- Purpose: To define standardized data schemas for collecting various types of data from different sources
-- ===========================================================

CREATE TABLE data_categories (
    data_category_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each data category schema',
    data_category_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Standardized name of the data category schema',
    data_category_description TEXT DEFAULT NULL COMMENT 'Detailed description of the data category',
    data_category_schema JSON NOT NULL COMMENT 'JSON-B for JSON Schema validation. Raw structure of the schema used for data collection',
    data_category_reference JSON DEFAULT NULL COMMENT 'RJSON-B for JSON Schema validation. eference usage for the schema',
    data_category_recommended_databases VARCHAR(100) DEFAULT NULL COMMENT 'Recommended compatible databases for the data category (e.g., Elasticsearch, InfluxDB, MySQL, PostgreSQL, MongoDB, ...)',
    schema_type_code VARCHAR(10) REFERENCES schema_types(schema_type_code) -- 'Associating with schema_type'
);
