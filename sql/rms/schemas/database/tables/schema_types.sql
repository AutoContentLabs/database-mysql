-- File: schema_types.sql
-- Purpose: Creating schema_types table for defining various schema types used in data categorization
CREATE TABLE
    schema_types (
        schema_type_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for schema types',
        schema_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of schema type',
        schema_type_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of the schema type',
        schema_type_standard VARCHAR(50) COMMENT 'Standard associated with the schema type',
        data_category_schema JSON COMMENT 'Schema representation for data categories based on this schema type',
        recommended_database VARCHAR(50) COMMENT 'Recommended database to use with this schema type',
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp',
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Record update timestamp'
    );