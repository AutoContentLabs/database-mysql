-- File: providers.sql
-- Purpose: To store information about providers of services or resources, including companies, organizations, or individuals.
-- ====================================================================================================================

CREATE TABLE providers (
    provider_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each provider',
    provider_name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Name of the provider',
    provider_description TEXT DEFAULT NULL COMMENT 'Description of the services or resources provided by the provider'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store information about service or resource providers';

