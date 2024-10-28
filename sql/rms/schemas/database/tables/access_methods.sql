-- File: access_methods.sql
-- Purpose: Defines the access_methods table schema to store information about various access methods
-- Author: [Your Name]
-- Date: [Current Date]
-- ===============================================
-- Script to Create Access Methods Table
-- ===============================================
CREATE TABLE
    access_methods (
        -- Unique identifier for each access method
        access_method_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each access method',
        -- Name of the access method; must be unique and cannot be NULL
        access_method_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the access method; must be unique and cannot be NULL',
        -- Description of the access method; can be NULL if not provided
        access_method_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of the access method'
    );

-- ===============================================
-- NOTES: Considerations related to this table:
-- 1. Data Integrity: Ensure that the access_method_name remains unique and properly validated during data entry.
-- 2. Indexing: An index is automatically created for the access_method_id primary key.
-- ===============================================