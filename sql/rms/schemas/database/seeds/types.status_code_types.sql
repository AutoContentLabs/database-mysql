-- File: status_code_types.sql
-- Purpose: Insert initial data into the status_types table
-- ===========================================================================================================

INSERT INTO
    status_code_types (status_name, status_description)
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