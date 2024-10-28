-- File: source_types.sql
-- Purpose: Defines the source_types table schema to categorize different types of data sources
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    source_types (
        -- Unique identifier for each source type
        source_type_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each source type',
        -- Name of the source type; must be unique (e.g., 'web')
        source_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the source type; must be unique (e.g., web)',
        -- Description of the source type; provides additional context    
        source_type_description TEXT NULL DEFAULT NULL COMMENT 'Description of the source type; provides additional context'
    );

-- NOTES: Considerations related to this table:
-- 1. The type_name field must be unique to prevent duplicate entries for the same source type.
-- 2. This table can be used to reference source types in other tables, enhancing data normalization.