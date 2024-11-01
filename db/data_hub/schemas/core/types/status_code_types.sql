-- File: status_code_types.sql
-- Purpose: To define status codes that express the state of an object, record, or system component.
-- This table helps in categorizing and identifying various status types for records and components in the system.
-- ===========================================================================================================

CREATE TABLE status_code_types (
    status_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each status type',
    status_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Readable name of the status (e.g., ''active'', ''inactive''); must be unique',
    status_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Detailed description of what each status represents'
);