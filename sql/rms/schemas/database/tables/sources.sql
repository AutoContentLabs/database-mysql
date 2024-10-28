-- File: sources.sql
-- Purpose: Defines the sources table schema to store information about various data sources
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    sources (
        -- Unique identifier for each source
        source_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Status of the platform; this references status_types for different statuses
        -- 1=active, 2=inactive, 3=maintenance, 4=under_review, 5=suspended
        source_status_id INT NOT NULL,
        -- Foreign key for the provider (e.g., provider_id=1 for Google LLC, provider_id=2 for Open-Meteo GmbH)
        provider_id INT NOT NULL,
        -- 1: web
        source_type_id INT NOT NULL,
        -- (1:trend, 2:meteorological, 3:economic, 4:health, 5:demographic, 6:geographic, 7:educational, 8:environmental, 9:technological )
        data_category_id int NOT NULL,
        -- (1:time_series, 2:historical, 3:aggregated, 4:categorical, 5:text)
        schema_type_id int NOT NULL,
        -- Name of the source (e.g., 'Trend sources', 'Weather sources')
        source_name VARCHAR(255) NOT NULL,
        -- Description of the source
        source_description TEXT NULL DEFAULT NULL COMMENT 'Description of the source',
        -- Timestamp of the last usage in UTC; defaults to the current timestamp
        source_last_used TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- NOTES: Possible considerations related to this table:
-- 1. Indexing: Create appropriate indexes for foreign keys and frequently queried fields.
-- 2. Data Integrity: Ensure that foreign key references are enforced to maintain data integrity.
-- 3. Maintenance: Regularly update the source_last_used field to reflect the latest usage.
-- Example index creation
-- CREATE INDEX idx_provider ON sources (provider_id);