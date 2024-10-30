-- File: platforms.sql
-- Purpose: To store information about platforms where applications or services are developed and operated.
-- Includes web platforms, social media, content sharing platforms, and financial platforms.
-- =======================================================================================================

CREATE TABLE platforms (
    platform_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each platform',
    platform_name VARCHAR(255) NOT NULL COMMENT 'Name of the platform (e.g., Google Trends, Open-Meteo)',
    platform_description TEXT DEFAULT NULL COMMENT 'Description providing general information about the platform'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store information about various platforms used for applications and services';
