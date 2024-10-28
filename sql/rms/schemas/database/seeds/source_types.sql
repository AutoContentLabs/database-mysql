-- File: source_types.sql
-- Purpose: Insert initial data into the source_types table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Source Types Table
-- ===============================================
-- Insert initial data into the source_types table
INSERT INTO
    source_types (source_type_name, source_type_description)
VALUES
    (
        'web',
        'Data obtained from online platforms and APIs.'
    );

-- ===============================================
-- Note:
-- Ensure the 'source_types' table exists in your database
-- before executing this script.
-- ===============================================