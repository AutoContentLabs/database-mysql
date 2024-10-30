-- File: source_types.sql
-- Purpose: To categorize sources based on their intended use, such as web sources and database sources.
-- ========================================================================================================

CREATE TABLE source_types (
    source_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique code for the source type (1: web, 2: database)',
    source_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the source type (e.g., "web", "database")',
    source_type_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of the source type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table categorizing sources based on their usage purpose (e.g., web, database)';
