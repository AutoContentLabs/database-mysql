-- File: data_categories.sql
-- Purpose: To define standardized data schemas for collecting various types of data from different sources
-- ===========================================================

CREATE TABLE data_categories (
    data_category_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each data category schema',
    data_category_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Standardized name of the data category schema',
    data_category_description TEXT DEFAULT NULL COMMENT 'Detailed description of the data category',
    data_category_schema JSON NOT NULL COMMENT 'Raw structure of the schema used for data collection',
    data_category_reference JSON DEFAULT NULL COMMENT 'Reference usage for the schema',
    data_category_recommended_databases VARCHAR(100) DEFAULT NULL COMMENT 'Recommended compatible databases for the data category (e.g., Elasticsearch, InfluxDB, MySQL, PostgreSQL, MongoDB)'
    -- CHECK (data_category_id BETWEEN 1 AND 9)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store predefined data schemas for standard data collection';
