-- File: data_collection_tags.sql
-- Purpose: To establish a many-to-many relationship between data records and tags used for categorization or classification.
-- This table serves as a junction table linking data records with their associated tags.
-- ===========================================================

CREATE TABLE data_collection_tags (
    data_record_id INT NOT NULL COMMENT 'Identifier for the data record; references the primary key of the data record table',
    tag_id INT NOT NULL COMMENT 'Identifier for the tag; references the primary key of the tags table'
);
