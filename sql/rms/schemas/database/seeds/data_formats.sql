-- File: data_formats.sql
-- Purpose: Insert initial data into the data_formats table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Schema Types Table
-- ===============================================
-- Insert initial data into the data_formats table
INSERT INTO
    data_formats (data_format_name, data_format_description)
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
    );

-- ===============================================
-- Note:
-- Ensure the 'data_formats' table exists in your database
-- before executing this script.
-- ===============================================