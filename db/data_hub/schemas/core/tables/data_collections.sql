-- File: data_collection.sql
-- Purpose: To store collected data records according to data standards and sources.
-- This table facilitates the organization and management of data records,
-- ensuring compliance with specified schemas and allowing for version control.
-- ===============================================================

CREATE TABLE data_collections (
    data_record_id INT AUTO_INCREMENT COMMENT 'Unique identifier for each data record; serves as the primary key',
    data_category_id INT NOT NULL COMMENT 'Reference to the data_categories table; indicates the category of the data schema (e.g., Time Series Basic, Time Series Advanced)',
    source_id INT COMMENT 'Unique identifier for the source of the data; may reference an external sources table for tracking data origins',
    data_information_version INT DEFAULT 1 COMMENT 'Version control for data information; helps manage changes and updates to data records',
    data_information JSON NOT NULL COMMENT 'Content of the data that complies with the schema; validation and structure control mechanisms will be applied to ensure data integrity',
    collection_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the record was created; useful for tracking data collection times',
    PRIMARY KEY (data_record_id) COMMENT 'Primary key to uniquely identify each data record'
);
