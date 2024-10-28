-- File: source_metrics.sql
-- Purpose: Defines the source_metrics table schema to track metrics related to data sources
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    source_metrics (
        -- Unique identifier for each metric record
        metric_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Unique identifier for the related source; references sources table
        source_id INT NOT NULL,
        -- Hizmet Metriği ve İzleme:
        service_id INT NOT NULL,
        -- Query time in seconds; duration for processing data retrieved from the source
        query_time FLOAT,
        -- Success status of the API call; TRUE if successful, FALSE if failed
        success BOOLEAN,
        -- Active status of the source; TRUE if the source is active, FALSE if deactivated
        active_status BOOLEAN DEFAULT TRUE,
        -- Timestamp indicating when the record was created; defaults to current timestamp
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- NOTES: Considerations related to this table:
-- 1. Ensure that source_id is a valid reference to the sources table to maintain referential integrity.
-- 2. Indexing the source_id column could enhance performance for queries filtering by source.