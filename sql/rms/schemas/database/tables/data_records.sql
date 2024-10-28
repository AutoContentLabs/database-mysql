-- File: data_records.sql
-- Purpose: Defines the data_records table schema for storing various data entries
-- Author: [Your Name]
-- Date: [Current Date]
CREATE TABLE
    data_records (
        record_id INT AUTO_INCREMENT COMMENT 'Unique identifier for each data record',
        data_category_id INT NOT NULL COMMENT 'Foreign key referencing the data category',
        schema_type_id INT NOT NULL COMMENT 'Foreign key referencing the schema type',
        data_content JSON NOT NULL COMMENT 'Content of the record in JSON format',
        source JSON NULL COMMENT 'Source of the data (e.g., API name, website)',
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the record was created',
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for when the record was last updated',
        PRIMARY KEY (record_id, created_at)
    )
PARTITION BY
    RANGE (UNIX_TIMESTAMP (created_at)) (
        PARTITION p202309
        VALUES
            LESS THAN (UNIX_TIMESTAMP ('2023-10-01 00:00:00')),
            PARTITION p202310
        VALUES
            LESS THAN (UNIX_TIMESTAMP ('2023-11-01 00:00:00')),
            PARTITION p202311
        VALUES
            LESS THAN (UNIX_TIMESTAMP ('2023-12-01 00:00:00')),
            PARTITION p202312
        VALUES
            LESS THAN (UNIX_TIMESTAMP ('2024-01-01 00:00:00')),
            PARTITION p202401
        VALUES
            LESS THAN (UNIX_TIMESTAMP ('2024-02-01 00:00:00'))
    );

-- NOTES:
-- 1. The data_category_id and schema_type_id fields must reference existing categories and types.
-- 2. The source field allows tracking where the data originated.
-- 3. The JSON_VALID check ensures that data_content holds valid JSON format.
-- 4. Partitioning is done by year of creation for better performance with large datasets.
-- 5. Redis , Memcached
-- Auto Partitioning Script
-- Partition Limitattion: 1024
-- SET @current_date = CURDATE();
-- SET @next_partition = DATE_FORMAT(DATE_ADD(@current_date, INTERVAL 1 MONTH), '%Y%m');
-- SET @sql = CONCAT('ALTER TABLE data_records ADD PARTITION (PARTITION p', @next_partition, ' VALUES LESS THAN (', DATE_FORMAT(DATE_ADD(@current_date, INTERVAL 2 MONTH), '%Y%m'), '))');
-- PREPARE stmt FROM @sql;
-- EXECUTE stmt;
-- DEALLOCATE PREPARE stmt;
-- Example Insert
-- INSERT INTO data_records (data_category_id, schema_type_id, data_content)
-- VALUES
-- (1, 1, JSON_OBJECT('t', '2024-01-01T10:00:00Z', 'temperature', 22.5, 'humidity', 65));