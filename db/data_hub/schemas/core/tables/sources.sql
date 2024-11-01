-- File: sources.sql
-- Purpose: To define sources from which any information, data, or value is obtained, produced, or referenced.
-- =========================================================================================================================

CREATE TABLE sources (
    source_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each source; serves as the primary key for the table',
    
    source_name VARCHAR(50) NOT NULL COMMENT 'General name of the source (e.g., Trend sources, Weather sources)',
    
    source_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'A description that best describes the source; provides additional context',
    
    source_type_code INT COMMENT 'Indicates the type of the source (1: web, 2: database, etc.); reference to source_type table can be added for clarity',
    
    -- DEFAULT 1: Sources start in an active state. If the source becomes inaccessible, the status can be updated accordingly.
    -- Status Codes: 1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended
    source_status_code INT NOT NULL DEFAULT 1 COMMENT 'Indicates the status of the source',


    data_category_id INT NOT NULL COMMENT 'Category of data associated with the source (1: trend, 2: meteorological, 3: economic, 4: health, 5: demographic, 6: geographic, 7: educational, 8: environmental, 9: technological)'
);