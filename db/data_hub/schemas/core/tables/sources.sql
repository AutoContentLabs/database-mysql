-- File: sources.sql
-- Purpose: To define sources from which any information, data, or value is obtained, produced, or referenced.
-- =========================================================================================================================

CREATE TABLE sources (
    source_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each source',
    source_name VARCHAR(255) NOT NULL COMMENT 'General name of the source (e.g., Trend sources, Weather sources)',
    source_description TEXT NULL DEFAULT NULL COMMENT 'A description that best describes the source'
);

