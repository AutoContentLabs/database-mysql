-- File: status_code_types.sql
-- Purpose: To define status codes that express the state of an object, record, or system component.
-- ===========================================================================================================

CREATE TABLE status_code_types (
    status_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each status type',
    status_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Readable name of the status (e.g., "active", "inactive")',
    status_description TEXT NULL DEFAULT NULL COMMENT 'Detailed description of what each status represents'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table for defining status codes representing various states of objects or components';
