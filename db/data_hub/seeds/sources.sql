-- File: sources.sql
-- Purpose: Insert initial data into the sources table
-- =========================================================================================================================

INSERT INTO
    sources (source_name, source_description)
VALUES
    (
        'Trend sources',
        'The most popular trending resources in Daily Life'
    ),
    (
        'Weather sources',
        'Weather events in daily life resources'
    );