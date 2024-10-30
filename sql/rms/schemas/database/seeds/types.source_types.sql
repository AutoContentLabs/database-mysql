-- File: source_types.sql
-- Purpose: Insert initial data into the source_types table
-- ========================================================================================================

INSERT INTO
    source_types (source_type_name, source_type_description)
VALUES
    (
        'web',
        'Data obtained from online platforms and APIs.'
    ),
    (
        'database',
        'Data obtained from various database management systems.'
    );
