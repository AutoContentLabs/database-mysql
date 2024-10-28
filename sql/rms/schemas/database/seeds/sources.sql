-- File: sources.sql
-- Purpose: Insert initial data into the sources table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Sources Table
-- ===============================================
-- Insert initial data into the sources table
INSERT INTO
    sources (
        source_status_id,
        provider_id,
        source_type_id,
        data_category_id,
        schema_type_id,
        source_name,
        source_description
    )
VALUES
    (
        1,
        1,
        1,
        1,
        1,
        'Trend sources',
        'The most popular trending resources in Daily Life'
    ),
    (
        1,
        2,
        1,
        1,
        2,
        'Weather sources',
        'Weather events in daily life resources'
    );

-- ===============================================
-- Note:
-- Ensure the 'sources' table exists in your database
-- before executing this script.
-- ===============================================