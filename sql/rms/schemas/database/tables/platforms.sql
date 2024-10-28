-- File: platforms.sql
-- Purpose: Defines the platforms table schema to store information about various platforms
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    platforms (
        -- Unique identifier for each platform
        platform_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Status of the platform; this references status_types for different statuses
        -- 1=active, 2=inactive, 3=maintenance, 4=under_review, 5=suspended
        platform_status_id INT NOT NULL,
        -- Foreign key referencing the source table; indicates the source associated with this platform    
        source_id INT NOT NULL,
        -- Domain of the platform (e.g., www.example.com)
        platform_domain VARCHAR(255) NULL,
        -- Name of the platform; cannot be NULL
        platform_name VARCHAR(255) NOT NULL,
        -- Detailed description of the platform; can be NULL if not provided
        platform_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of the platform; can be NULL if not provided'
    );

-- NOTES: Possible considerations related to this table:
-- 1. Foreign Key Constraints: Ensure that source_id and platform_status_id reference valid entries in their respective tables.
-- 2. Data Integrity: Regularly validate the data to prevent orphaned entries in the platforms table.
-- 3. Indexing: An index is automatically created for the platform_id primary key.