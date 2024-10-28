-- File: regions.sql
-- Purpose: Insert initial data into the regions table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Regions Table
-- ===============================================
-- Insert initial data into the regions table
INSERT INTO
    regions (region_code, region_name)
VALUES
    ('AF', 'Africa'), -- African continent
    ('AS', 'Asia'), -- Asian continent
    ('EU', 'Europe'), -- European continent
    ('NA', 'North America'), -- North American continent
    ('SA', 'South America'), -- South American continent
    ('OC', 'Oceania'), -- Oceania
    ('AN', 'Antarctica'), -- Antarctica
    ('ME', 'Middle East');

-- Middle Eastern region
-- ===============================================
-- Note:
-- Ensure the 'regions' table exists in your database
-- before executing this script.
-- ===============================================