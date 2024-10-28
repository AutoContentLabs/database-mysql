-- File: access_types.sql
-- Purpose: Defines the access_types table schema to store information about various access methods
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    access_types (
        -- Unique identifier for each access type
        access_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each access type',
        -- Name of the access type; must be unique and cannot be NULL
        access_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the access type; must be unique and cannot be NULL',
        -- Description of the access type; can be NULL if not provided    
        access_type_description TEXT NULL DEFAULT NULL COMMENT 'Description of the access type; can be NULL if not provided'
    );

-- NOTES: Considerations related to this table:
-- 1. Data Integrity: Ensure that the access_name remains unique and properly validated during data entry.
-- 2. Indexing: An index is automatically created for the access_id primary key.