-- File: platforms.sql
-- Purpose: Insert initial data into the platforms table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Platforms Table
-- ===============================================
-- Insert initial data into the platforms table
INSERT INTO
    platforms (
        platform_status_id,
        source_id,
        platform_domain,
        platform_name,
        platform_description
    )
VALUES
    (
        1,
        1,
        'trends.google.com',
        'Google Trends',
        'Real time trends by Google'
    ),
    (
        1,
        2,
        'api.open-meteo.com',
        'Open-Meteo',
        'Real time access to the largest global weather database'
    );

-- ===============================================
-- Note:
-- Make sure the 'platforms' table exists in your database
-- before running this script.
-- ===============================================