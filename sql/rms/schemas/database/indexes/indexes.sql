-- File: indexes.sql
-- Purpose: Define indexes to optimize query performance in the database.
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Define Indexes
-- ===============================================
-- Index definitions
-- Create an index on platform_name in platforms table for faster lookups
CREATE INDEX idx_platform_name ON platforms (platform_name);

-- Speed up searches for platforms by name
-- Create a composite index on source_id and platform_id in services table
CREATE INDEX idx_source_platform ON services (source_id, platform_id);

-- Optimize queries filtering by source and platform
-- Create an index on source_name in sources table for faster lookups
CREATE INDEX idx_source_name ON sources (source_name);

-- Speed up searches for sources by name
-- Create a composite index on source_id and tag_id in source_tags table
CREATE INDEX idx_source_tag ON source_tags (source_id, tag_id);

-- Optimize queries filtering by source and tag
CREATE INDEX idx_service_domain ON services (service_domain);

-- ===============================================
-- Note:
-- Regularly review and optimize indexes as data grows.
-- Avoid creating too many indexes as they can slow down write operations.
-- ===============================================