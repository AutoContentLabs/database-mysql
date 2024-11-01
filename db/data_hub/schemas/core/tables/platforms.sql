-- File: platforms.sql
-- Purpose: To store information about platforms where applications or services are developed and operated.
-- This includes various types of platforms such as web platforms, social media, content sharing platforms, and financial platforms.
-- =======================================================================================================

CREATE TABLE platforms (
    platform_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each platform; serves as the primary key for the table',
    platform_name VARCHAR(50) NOT NULL COMMENT 'Name of the platform (e.g., Google Trends, Open-Meteo); serves as a concise reference for the platform',
    platform_description VARCHAR(255) DEFAULT NULL COMMENT 'Description providing general information about the platform; offers context and details about its purpose and functionalities',
    platform_status_code INT NOT NULL DEFAULT 1 COMMENT 'Indicates the status of the platform: 1: active, 2: inactive, 3: maintenance, 4: under review, 5: suspended; allows tracking of platform availability and operational status'
);
