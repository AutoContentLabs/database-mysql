-- File: providers.sql
-- Purpose: To store information about providers of services or resources, including companies, organizations, or individuals.
-- This table serves as a reference for tracking various service providers and their offerings.
-- ====================================================================================================================

CREATE TABLE providers (
    provider_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each provider; serves as the primary key for the table',
    provider_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the provider; must be unique to avoid duplication in the database',
    provider_description VARCHAR(255) DEFAULT NULL COMMENT 'Description of the services or resources provided by the provider; offers context about the provider’s offerings and capabilities'
);
