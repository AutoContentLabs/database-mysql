-- File: src/migrations/mysql/init.sql
-- Purpose: Initialize the database by creating tables, foreign keys, indexes, views, and inserting initial data.
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0

-- ===============================================
-- Initialize Database
-- ===============================================

-- table
SOURCE /docker-entrypoint-initdb.d/rms/tables/access_methods.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/access_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/countries.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/languages.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/platform_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/platforms.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/providers.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/regions.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/data_formats.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/service_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/services.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/source_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/source_tags.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/sources.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/source_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/status_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/data_categories.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/schema_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/tags.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/source_usage.sql;
SOURCE /docker-entrypoint-initdb.d/rms/tables/data_records.sql;

-- foreign
SOURCE /docker-entrypoint-initdb.d/rms/foreign_keys.sql;

-- index
SOURCE /docker-entrypoint-initdb.d/rms/indexes.sql;

-- triggers
SOURCE /docker-entrypoint-initdb.d/rms/triggers.sql;

-- views
SOURCE /docker-entrypoint-initdb.d/rms/views/report_platform_performans.sql;
SOURCE /docker-entrypoint-initdb.d/rms/views/report_service_performans.sql;
SOURCE /docker-entrypoint-initdb.d/rms/views/report_source_performans.sql;

-- insert
SOURCE /docker-entrypoint-initdb.d/rms/insert/access_methods.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/access_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/countries.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/languages.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/platform_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/regions.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/data_formats.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/service_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/source_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/tags.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/data_categories.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/schema_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/status_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/source_types.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/providers.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/sources.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/platforms.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/services.sql;
SOURCE /docker-entrypoint-initdb.d/rms/insert/source_tags.sql;

-- ===============================================
-- Note:
-- Review each script for completeness and consistency.
-- Ensure foreign key constraints do not violate existing data.
-- ===============================================
