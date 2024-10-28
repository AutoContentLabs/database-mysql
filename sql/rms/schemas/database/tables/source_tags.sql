CREATE TABLE
    source_tags (
        -- Identifier for the source; references sources table
        source_id INT NOT NULL,
        -- Identifier for the tag; references tags table
        tag_id INT NOT NULL,
        -- Foreign key constraints to ensure referential integrity
        -- FOREIGN KEY (source_id) REFERENCES sources(source_id) ON DELETE CASCADE,
        -- FOREIGN KEY (tag_id) REFERENCES tags(tag_id) ON DELETE CASCADE,
        -- Composite primary key to ensure uniqueness of source-tag pairs
        PRIMARY KEY (source_id, tag_id),
        -- Timestamp for when the tag was assigned to the source
        assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

-- NOTES:
-- 1. The tags table allows for the categorization of sources using unique tags.
-- 2. The source_tags table serves as a junction table to create a many-to-many relationship
--    between sources and tags, enabling a source to have multiple tags and a tag to be associated with multiple sources.
-- 3. The assigned_at field allows tracking of when tags were associated with sources.