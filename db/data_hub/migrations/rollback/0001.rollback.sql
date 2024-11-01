-- Rollback Script for migration_history Table
-- This script drops the migration_history table if it exists

-- Check if the migration_history table exists and drop it
DROP TABLE IF EXISTS access_method_types;
DROP TABLE IF EXISTS access_types;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS country_types;
DROP TABLE IF EXISTS data_categories;
DROP TABLE IF EXISTS data_collections;
DROP TABLE IF EXISTS data_format_types;
DROP TABLE IF EXISTS jobs;
DROP TABLE IF EXISTS language_types;
DROP TABLE IF EXISTS measurements_of_platforms;
DROP TABLE IF EXISTS measurements_of_services;
DROP TABLE IF EXISTS measurements_of_sources;
DROP TABLE IF EXISTS platforms;
DROP TABLE IF EXISTS providers;
DROP TABLE IF EXISTS regions;
DROP TABLE IF EXISTS schema_types;
DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS source_types;
DROP TABLE IF EXISTS sources;
DROP TABLE IF EXISTS status_code_types;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS tasks;
DROP VIEW  measurements_of_platforms_report;
DROP VIEW  measurements_of_services_report;
DROP VIEW  measurements_of_sources_report;