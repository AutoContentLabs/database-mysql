-- File: access_types.sql
-- Purpose: Insert initial data into the access_types table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Access Types Table
-- ===============================================
-- Insert initial data into the access_types table
INSERT INTO
    access_types (access_type_name, access_type_description)
VALUES
    (
        'api',
        'Application Programming Interface, allows applications to communicate.'
    ),
    (
        'rss',
        'Really Simple Syndication, a web feed format for syndicating content.'
    ),
    (
        'scraping',
        'Extracting data from websites using automated tools.'
    );

-- ===============================================
-- Note:
-- Ensure the 'access_types' table exists in your database
-- before executing this script.
-- ===============================================