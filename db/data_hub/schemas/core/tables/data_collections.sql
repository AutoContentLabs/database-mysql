-- File: data_collection.sql
-- Purpose: To store collected data records according to data standards and sources
-- ===============================================================

CREATE TABLE data_collections (
    data_record_id INT AUTO_INCREMENT COMMENT 'Unique identifier for each data record',
    data_information JSON NOT NULL COMMENT 'Content of the data compliant with the schema',
    collection_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the record was created',
    PRIMARY KEY (data_record_id, collection_date) -- PRIMARY KEY updated to include collection_date
);
