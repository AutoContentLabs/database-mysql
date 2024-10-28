-- File: service_metrics.sql
-- Purpose: Defines the service_metrics table schema to track metrics related to API service calls
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    service_metrics (
        -- Unique identifier for each metric record
        metric_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Unique identifier for the related service; references services table
        service_id INT NOT NULL,
        -- FOREIGN KEY (service_id) REFERENCES services(service_id), -- Ensure service_id exists in services table
        -- Query time in seconds; duration for processing data retrieved from the service
        query_time FLOAT,
        -- Success status of the API call; TRUE if successful, FALSE if failed
        success BOOLEAN,
        -- Timestamp indicating when the record was created; defaults to current timestamp
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- NOTES: Considerations related to this table:
-- 1. Ensure that service_id is a valid reference to the services table to maintain referential integrity.
-- 2. Indexing the service_id column could enhance performance for queries that filter by service.