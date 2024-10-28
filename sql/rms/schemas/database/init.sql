-- File: src/migrations/mysql/init.sql
-- Purpose: Initialize the database by creating tables, foreign keys, indexes, views, and inserting initial data.
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0

-- ===============================================
-- Initialize Database
-- ===============================================

-- table
SOURCE /docker-entrypoint-initdb.d/tables/access_methods.sql;
SOURCE /docker-entrypoint-initdb.d/tables/access_types.sql;
SOURCE /docker-entrypoint-initdb.d/tables/countries.sql;
SOURCE /docker-entrypoint-initdb.d/tables/languages.sql;
SOURCE /docker-entrypoint-initdb.d/tables/platform_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/tables/platforms.sql;
SOURCE /docker-entrypoint-initdb.d/tables/providers.sql;
SOURCE /docker-entrypoint-initdb.d/tables/regions.sql;
SOURCE /docker-entrypoint-initdb.d/tables/data_formats.sql;
SOURCE /docker-entrypoint-initdb.d/tables/service_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/tables/services.sql;
SOURCE /docker-entrypoint-initdb.d/tables/source_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/tables/source_tags.sql;
SOURCE /docker-entrypoint-initdb.d/tables/sources.sql;
SOURCE /docker-entrypoint-initdb.d/tables/source_types.sql;
SOURCE /docker-entrypoint-initdb.d/tables/status_types.sql;
SOURCE /docker-entrypoint-initdb.d/tables/data_categories.sql;
SOURCE /docker-entrypoint-initdb.d/tables/schema_types.sql;
SOURCE /docker-entrypoint-initdb.d/tables/tags.sql;
SOURCE /docker-entrypoint-initdb.d/tables/source_usage.sql;
SOURCE /docker-entrypoint-initdb.d/tables/data_records.sql;

-- foreign
SOURCE /docker-entrypoint-initdb.d/constraints/foreign_keys.sql;

-- index
SOURCE /docker-entrypoint-initdb.d/indexes/indexes.sql;

-- triggers
SOURCE /docker-entrypoint-initdb.d/triggers/triggers.sql;

-- views
SOURCE /docker-entrypoint-initdb.d/views/report_platform_performans.sql;
SOURCE /docker-entrypoint-initdb.d/views/report_service_performans.sql;
SOURCE /docker-entrypoint-initdb.d/views/report_source_performans.sql;

-- insert
SOURCE /docker-entrypoint-initdb.d/seeds/access_methods.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/access_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/countries.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/languages.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/platform_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/regions.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/data_formats.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/service_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/source_metrics.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/tags.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/data_categories.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/schema_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/status_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/source_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/providers.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/sources.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/platforms.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/services.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/source_tags.sql;

-- ===============================================
-- Note:
-- Review each script for completeness and consistency.
-- Ensure foreign key constraints do not violate existing data.
-- ===============================================
