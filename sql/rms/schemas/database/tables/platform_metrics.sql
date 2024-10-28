-- File: platform_metrics.sql
-- Purpose: Defines the platform_metrics table schema to track metrics related to API calls
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    platform_metrics (
        -- Unique identifier for each metric record; auto-incrementing
        metric_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Unique identifier of the related platform; references the platforms table
        platform_id INT NOT NULL,
        -- FOREIGN KEY (platform_id) REFERENCES platforms(platform_id), -- Foreign key reference to ensure the platform exists
        -- Query time in seconds; duration taken to process data from the platform
        query_time FLOAT,
        -- Boolean indicating the success status of the API call; TRUE if successful, FALSE otherwise
        success BOOLEAN,
        -- Count of how many times the platform has been called; defaults to 0
        usage_count INT DEFAULT 0,
        -- Timestamp for when the record was created; defaults to the current time
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- NOTES: Considerations related to this table:
-- 1. Data Integrity: Ensure that platform_id exists in the platforms table to maintain referential integrity.
-- 2. Performance: Indexing the platform_id column may improve query performance for aggregating metrics by platform.