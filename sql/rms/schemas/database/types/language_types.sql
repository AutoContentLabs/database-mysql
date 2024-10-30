-- File: language_types.sql
-- Purpose: To define languages using their respective ISO codes.
-- ========================================================================================================

CREATE TABLE language_types (
    language_code VARCHAR(5) PRIMARY KEY COMMENT 'ISO 639 standard language code (e.g., "EN", "TR", "ZH"); maximum of 5 characters',
    language_name VARCHAR(50) NOT NULL COMMENT 'Full name of the language; cannot be NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table storing language types and their ISO codes';


