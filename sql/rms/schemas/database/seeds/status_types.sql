-- File: status_types.sql
-- Purpose: Insert initial data into the status_types table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Status Types Table
-- ===============================================
-- Insert initial data into the status_types table
INSERT INTO
    status_types (status_type_name, status_type_description)
VALUES
    (
        'active',
        'The source or service is active and data is available.'
    ),
    (
        'inactive',
        'The source or service is disabled and not usable.'
    ),
    (
        'maintenance',
        'The source or service is under maintenance and temporarily unavailable.'
    ),
    (
        'under_review',
        'The source or service is under review, assessment is in progress.'
    ),
    (
        'suspended',
        'The source or service has been temporarily suspended.'
    );

-- ===============================================
-- Note:
-- Ensure the 'status_types' table exists in your database
-- before executing this script.
-- ===============================================