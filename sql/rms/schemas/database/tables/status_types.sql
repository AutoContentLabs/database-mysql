-- File: status_types.sql
-- Purpose: Defines the status_types table schema to categorize different status types
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    status_types (
        -- Unique identifier for each status type
        status_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Name of the status type; must be unique (e.g., 'active', 'inactive')
        status_type_name VARCHAR(50) NOT NULL UNIQUE, -- Durum adı benzersiz olmalı
        -- Description of the status type; provides additional context
        status_type_description TEXT NULL DEFAULT NULL COMMENT 'Description of the status type; provides additional context'
    );

-- NOTES: Considerations related to this table:
-- 1. The status_name field must be unique to prevent duplicate entries for the same status type.
-- 2. This table can be referenced by other tables to maintain consistent status descriptions.