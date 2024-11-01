-- File: source_types.sql
-- Purpose: To categorize sources based on their intended use, such as web sources and database sources.
-- This table helps in organizing and identifying different types of sources utilized in data collection and analysis.
-- ========================================================================================================

CREATE TABLE source_types (
    source_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique code for the source type (e.g., 1 for web, 2 for database)',
    source_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the source type (e.g., ''web'', ''database''); must be unique',
    source_type_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Detailed description of the source type, outlining its characteristics and intended use'
);