-- File: data_categories.sql
-- Purpose: Creating data_categories table for defining various data categories linked to schema types
CREATE TABLE
    data_categories (
        data_category_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for data categories',
        data_category_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of data category',
        data_category_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of the category',
        schema_type_id INT COMMENT 'Foreign key referencing schema_types table',
        recommended_database VARCHAR(50) COMMENT 'The database type in which the category should be stored',
        data_category_schema JSON COMMENT 'Defines the schema for the category based on selected schema type',
        data_category_reference JSON COMMENT 'Provides practical reference examples for the data category',
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp',
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Record update timestamp'
        -- FOREIGN KEY (schema_type_id) REFERENCES schema_types (schema_type_id)
    );