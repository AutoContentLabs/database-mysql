-- File: tags.sql
-- Purpose: Defines the tags and source_tags table schemas for categorizing sources
-- Author: [Your Name]
-- Date: [Current Date]
-- ===============================================
-- Create the 'tags' table to categorize various sources
-- based on relevant topics. This table will serve as
-- a reference for the types of content available within
-- the system, facilitating content organization and retrieval.
-- ===============================================
CREATE TABLE
    tags (
        -- Unique identifier for each tag
        tag_id INT AUTO_INCREMENT PRIMARY KEY,
        -- Name of the tag; must be unique (e.g., 'weather', 'trends')
        -- This field is essential for identifying the tag and 
        -- must not contain duplicates to ensure clarity in 
        -- categorization.
        tag_name VARCHAR(50) NOT NULL UNIQUE,
        -- Description of the tag; provides additional context
        -- This optional field can be used to give more details 
        -- about the tag's relevance, purpose, or examples of 
        -- its application in categorizing sources.
        tag_description TEXT NULL DEFAULT NULL COMMENT 'Description of the tag; provides additional context'
    );

-- ===============================================
-- Note:
-- Ensure that the tags table is created before any
-- attempts to insert data into it. This table is a
-- crucial part of the content categorization framework
-- and should be populated with relevant tags for optimal
-- data organization.
-- ===============================================