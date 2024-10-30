-- File: tags.sql
-- Purpose: To define tags that are used in the data collection, processing, and analysis phases, aligned with fundamental categories.
-- =========================================================================================================================

CREATE TABLE tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each tag',
    tag_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the tag (e.g., ''weather'', ''trends'')',
    tag_description TEXT NULL DEFAULT NULL COMMENT 'Details describing the tag and its purpose'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store tags related to data collection and analysis processes';

