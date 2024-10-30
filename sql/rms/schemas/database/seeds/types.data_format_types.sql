-- File: data_format_types.sql
-- Purpose: Insert initial data into the data_formats table
-- ========================================================================================================

-- Inserting initial data into the data_format_types table
INSERT INTO data_format_types (data_format_name, data_format_description)
VALUES
    (
        'json',
        'JavaScript Object Notation, a lightweight data-interchange format.'
    ),
    (
        'xml',
        'eXtensible Markup Language, a markup language that defines rules for encoding documents.'
    ),
    (
        'csv',
        'Comma-Separated Values, a simple file format used to store tabular data.'
    ),
    (
        'html',
        'HyperText Markup Language, the standard markup language for documents designed to be displayed in a web browser.'
    ),
    (
        'yaml',
        'YAML Ain\'t Markup Language, a human-readable data serialization standard that can be used in conjunction with all programming languages.'
    );
