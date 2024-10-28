-- File: services.sql
-- Purpose: Defines the services table schema to store information about various data services
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    services (
        -- Unique identifier for the service
        service_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Status of the platform; this references status_types for different statuses
        -- 1=active, 2=inactive, 3=maintenance, 4=under_review, 5=suspended
        service_status_id INT NOT NULL,
        -- Foreign key for the related source
        source_id INT NOT NULL,
        -- Foreign key for the related platform
        platform_id INT NOT NULL,
        -- Foreign key for the access method
        access_method_id INT NOT NULL,
        -- 1: free, 2: open_access, 3: subscription
        -- Foreign key for the access type
        access_type_id INT NOT NULL,
        -- 1: api, 2: rss, 3: scraping
        -- Data format (1: json, 2: xml, 3: csv)
        data_format_id INT NOT NULL,
        -- ISO standard language code (e.g., 'EN', 'TR', 'ZH')
        language_code VARCHAR(5),
        -- ISO standard country code (e.g., 'US', 'TR', 'CN')
        country_code CHAR(2),
        -- ISO standard region code (optional)
        region_code CHAR(2),
        -- Domain of the service
        service_domain VARCHAR(255) NOT NULL,
        -- Path of the service
        service_path VARCHAR(255) NOT NULL,
        -- Query associated with the service
        service_query VARCHAR(255),
        -- Full URL of the service generated from domain, path, and query
        service_full_url VARCHAR(255) GENERATED ALWAYS AS (
            CONCAT (service_domain, service_path, service_query)
        ) STORED,
        -- Time interval in which the data source provides data (0: real_time)
        time_interval INT NOT NULL DEFAULT 0,
        -- Frequency (in seconds) at which data will be fetched from the external source
        fetch_frequency INT NOT NULL DEFAULT 0,
        -- Timestamp for when the data was last fetched; updated during each fetch
        last_fetched TIMESTAMP NULL,
        -- Timestamp for when the next fetch will occur; calculated automatically
        next_fetch TIMESTAMP NULL
    );

-- NOTES: Possible considerations related to this table:
-- 1. Indexing: Create appropriate indexes for foreign keys and frequently queried fields.
-- 2. Data Cleansing: Remove invalid or unnecessary data from the database.
-- 3. Scalability: Optimize the database for high-volume data streams.
-- 4. Query Analysis: Perform performance analysis to identify and optimize resource-intensive queries.
-- 5. Data Management Procedures: Develop proper procedures for data updates and deletions.
-- Example index creation
-- CREATE INDEX idx_source_platform ON services (source_id, platform_id);