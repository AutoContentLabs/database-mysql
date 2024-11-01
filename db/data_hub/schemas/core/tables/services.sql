-- File: services.sql
-- Purpose: To define services that are the fundamental components provided by platforms,
-- including services offered by their providers. These services are utilized in web resources.
-- =======================================================================================================================

CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each service; serves as the primary key for the table',
    
    -- DEFAULT 1: Services start in an active state. If the service becomes inaccessible, the status can be updated accordingly.
    -- Status Codes: 1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended
    service_status_code INT NOT NULL DEFAULT 1 COMMENT 'Indicates the status of the service',

    platform_id INT NOT NULL COMMENT 'The platform associated with the service; foreign key referencing platforms table',
    provider_id INT NOT NULL COMMENT 'The provider of the service; foreign key referencing providers table',
    source_id INT NOT NULL COMMENT 'The unique identifier for the source of the service',
    
    access_method_code INT NOT NULL COMMENT 'Reference to access_method_types table; indicates how the service can be accessed (1: free, 2: open_access, 3: subscription)',
    access_type_code INT NOT NULL COMMENT 'Reference to access_types table; specifies access method (1: api, 2: rss, 3: html (scraping))',
    data_format_code INT NOT NULL COMMENT 'Reference to data_format_types table; specifies the data format (1: json, 2: xml, 3: csv, 4: html)',

    country_code CHAR(2) NOT NULL COMMENT 'Unique ISO 3166-1 alpha-2 country code (e.g., "US", "TR", "CN")',
    region_code CHAR(2) NOT NULL COMMENT 'ISO code for the region (e.g., "EU" for Europe, "ME" for Middle East)',
    language_code VARCHAR(5) NOT NULL COMMENT 'ISO 639 standard language code; must be a maximum of 5 characters (e.g., "EN", "TR", "ZH")',

    service_type VARCHAR(25) NOT NULL COMMENT 'Service Type: specifies the type of service (e.g., "data source", "processing service")',
    authentication_required BOOLEAN DEFAULT FALSE COMMENT 'Indicates if authentication is required for the service (e.g., API keys)',
    authentication_details JSON COMMENT 'JSON structure for details about authentication methods if required; could include auth_type and other parameters',

    service_domain VARCHAR(255) NOT NULL COMMENT 'Domain of the service (e.g., api.example.com)',
    service_path VARCHAR(255) NOT NULL COMMENT 'Path of the service (e.g., /data/fetch)',
    service_query VARCHAR(255) DEFAULT NULL COMMENT 'Query parameters associated with the service, if any',

    service_full_url VARCHAR(255) GENERATED ALWAYS AS (
        CONCAT(
            service_domain,
            service_path,
            IF(
                service_query IS NULL OR service_query = '',
                '',
                CONCAT('?', service_query)
            )
        )
    ) STORED COMMENT 'Full URL of the service generated from domain, path, and query parameters',

    time_interval INT NOT NULL DEFAULT 0 COMMENT 'Time interval in which the data source provides data (0: real-time)',
    fetch_frequency INT NOT NULL DEFAULT 0 COMMENT 'Frequency (in seconds) at which data will be fetched from the external source',
    rate_limit INT NOT NULL DEFAULT 0 COMMENT 'Rate limiting for API services; specifies the maximum number of requests allowed',
    rate_limit_window INT NOT NULL DEFAULT 0 COMMENT 'Time window (in seconds) for the rate limit; defines the period over which rate limiting is applied',

    last_error_message TEXT COMMENT 'Stores the last error message encountered during data fetching; could be useful for debugging',
    last_fetched TIMESTAMP NULL COMMENT 'Timestamp for when the data was last fetched; updated during each fetch',
    next_fetch TIMESTAMP NULL COMMENT 'Timestamp for when the next fetch will occur; calculated automatically based on fetch frequency'
) COMMENT 'Services are typically web addresses from which we gather data, such as APIs.';
