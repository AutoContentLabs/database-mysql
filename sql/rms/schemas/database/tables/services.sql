-- File: services.sql
-- Purpose: To define services that are the fundamental components provided by platforms, 
-- including services offered by their providers. These services are utilized in web resources.
-- =======================================================================================================================

CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each service',
    service_domain VARCHAR(255) NOT NULL COMMENT 'Domain of the service (e.g., api.example.com)',
    service_path VARCHAR(255) NOT NULL COMMENT 'Path of the service (e.g., /data/fetch)',
    service_query VARCHAR(255) DEFAULT NULL COMMENT 'Query parameters associated with the service',
    service_full_url VARCHAR(255) GENERATED ALWAYS AS (
        CONCAT (
            service_domain,
            service_path,
            IF (
                service_query IS NULL OR service_query = '',
                '',
                CONCAT ('?', service_query)
            )
        )
    ) STORED COMMENT 'Full URL of the service generated from domain, path, and query parameters',
    time_interval INT NOT NULL DEFAULT 0 COMMENT 'Time interval in which the data source provides data (0: real-time)',
    fetch_frequency INT NOT NULL DEFAULT 0 COMMENT 'Frequency (in seconds) at which data will be fetched from the external source',
    last_fetched TIMESTAMP NULL COMMENT 'Timestamp for when the data was last fetched; updated during each fetch',
    next_fetch TIMESTAMP NULL COMMENT 'Timestamp for when the next fetch will occur; calculated automatically based on fetch frequency'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store information about services provided by platforms';

