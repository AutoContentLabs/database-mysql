-- File: access_methods.sql
-- Purpose: Insert initial data into the access_methods table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Access Methods Table
-- ===============================================
-- Insert initial data into the access_methods table
INSERT INTO
    access_methods (access_method_name, access_method_description)
VALUES
    ('free', 'Access is available at no cost.'),
    (
        'open_access',
        'Research outputs are freely available without any access restrictions.'
    ),
    (
        'subscription',
        'Access requires a paid subscription.'
    );

-- ===============================================
-- Note:
-- Ensure the 'access_methods' table exists in your database
-- before executing this script.
-- ===============================================