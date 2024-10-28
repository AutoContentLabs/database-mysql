-- File: services.sql
-- Purpose: Insert initial data into the services table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Services Table
-- ===============================================
-- Insert initial data into the services table
INSERT INTO
    services (
        service_status_id,
        source_id,
        platform_id,
        access_method_id,
        access_type_id,
        data_format_id,
        language_code,
        country_code,
        region_code,
        service_domain,
        service_path,
        service_query
    )
VALUES
    (
        1,
        1,
        1,
        1,
        2,
        2,
        'EN',
        'US',
        'NA',
        'trends.google.com',
        '/trending/rss',
        '?geo=US'
    ),
    (
        1,
        1,
        1,
        1,
        2,
        2,
        'TR',
        'TR',
        'ME',
        'trends.google.com',
        '/trending/rss',
        '?geo=TR'
    ),
    (
        1,
        2,
        2,
        1,
        1,
        1,
        'EN',
        'US',
        'NA',
        'api.open-meteo.com',
        '/v1/forecast',
        '?latitude=37.7749&longitude=-122.4194&hourly=temperature_2m'
    ),
    (
        1,
        2,
        2,
        1,
        1,
        1,
        'TR',
        'TR',
        'ME',
        'api.open-meteo.com',
        '/v1/forecast',
        '?latitude=38.9637&longitude=35.2433&hourly=temperature_2m'
    );

-- ===============================================
-- Note:
-- Ensure the 'services' table exists in your database
-- before executing this script.
-- ===============================================