-- File: languages.sql
-- Purpose: Defines the languages table schema to store information about various languages
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    languages (
        -- ISO standard language code; must be a maximum of 5 characters and is the primary key
        language_code VARCHAR(5) PRIMARY KEY,
        -- Full name of the language; cannot be NULL
        language_name VARCHAR(50) NOT NULL
    );

-- NOTES: Considerations related to this table:
-- 1. Data Integrity: Ensure that language_code follows the ISO 639 standard for language codes.
-- 2. Indexing: The primary key on language_code automatically creates an index for efficient querying.