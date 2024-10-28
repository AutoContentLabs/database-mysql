-- File: providers.sql
-- Purpose: Insert initial data into the providers table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Providers Table
-- ===============================================
-- Insert initial data into the providers table
INSERT INTO
    providers (provider_name, provider_description)
VALUES
    ('Google LLC', 'Data providing technology company'),
    ('Open-Meteo GmbH', 'Meteorological data provider');

-- ===============================================
-- Note:
-- Make sure the 'providers' table exists in your database
-- before running this script.
-- ===============================================