-- File: 0001.sql
-- Purpose: Initialize the database by creating tables, foreign keys, indexes, views, and inserting initial data.
-- =======================================================================================================
-- CORE --
-- Types: It is logical to load fixed values, classifications, and reference data like types in the database first.
-- These tables will later be used as references to other tables with foreign key constraints for data integrity.
SOURCE db/data_hub/schemas/core/types/access_method_types.sql;

SOURCE db/data_hub/schemas/core/types/access_types.sql;

SOURCE db/data_hub/schemas/core/types/country_types.sql;

SOURCE db/data_hub/schemas/core/types/data_format_types.sql;

SOURCE db/data_hub/schemas/core/types/language_types.sql;

SOURCE db/data_hub/schemas/core/types/regions.sql;

SOURCE db/data_hub/schemas/core/types/schema_types.sql;

SOURCE db/data_hub/schemas/core/types/source_types.sql;

SOURCE db/data_hub/schemas/core/types/status_code_types.sql;

COMMIT;

-- Seeds.Types: It is important to insert initial data into the types tables set up initially,
-- to avoid issues with foreign key constraints when adding data to other tables.
SOURCE db/data_hub/seeds/types.access_method_types.sql;

SOURCE db/data_hub/seeds/types.access_types.sql;

SOURCE db/data_hub/seeds/types.country_types.sql;

SOURCE db/data_hub/seeds/types.data_format_types.sql;

SOURCE db/data_hub/seeds/types.language_types.sql;

SOURCE db/data_hub/seeds/types.regions.sql;

SOURCE db/data_hub/seeds/types.schema_types.sql;

SOURCE db/data_hub/seeds/types.source_types.sql;

SOURCE db/data_hub/seeds/types.status_code_types.sql;

COMMIT;

-- Tables: This is the correct step to create the main tables in the database.
-- The types and seeds.types sections should be loaded up to this point so that
-- the tables can establish foreign key constraints properly.

SOURCE db/data_hub/schemas/core/tables/categories.sql;

SOURCE db/data_hub/schemas/core/tables/data_categories.sql;

SOURCE db/data_hub/schemas/core/tables/data_collections.sql;

SOURCE db/data_hub/schemas/core/tables/jobs.sql;

SOURCE db/data_hub/schemas/core/tables/platforms.sql;

SOURCE db/data_hub/schemas/core/tables/providers.sql;

SOURCE db/data_hub/schemas/core/tables/services.sql;

SOURCE db/data_hub/schemas/core/tables/sources.sql;

SOURCE db/data_hub/schemas/core/tables/tags.sql;

SOURCE db/data_hub/schemas/core/tables/tasks.sql;

COMMIT;

-- Seeds.Table: This step is to load initial data for the previously created tables.
-- When the tables in the Tables section are ready and compliant with foreign key references,
-- you can safely load the initial data.
SOURCE db/data_hub/seeds/categories.sql;

SOURCE db/data_hub/seeds/data_categories.sql;

SOURCE db/data_hub/seeds/data_collections.sql;

SOURCE db/data_hub/seeds/jobs.sql;

SOURCE db/data_hub/seeds/platforms.sql;

SOURCE db/data_hub/seeds/providers.sql;

SOURCE db/data_hub/seeds/services.sql;

SOURCE db/data_hub/seeds/sources.sql;

SOURCE db/data_hub/seeds/tags.sql;

SOURCE db/data_hub/seeds/tasks.sql;

COMMIT;

-- Relationships: This is the right place to define foreign keys or relationships between tables.
-- The relationships section may require all tables and seed data,
-- so it makes sense to establish relationships after loading tables and initial data.
SOURCE db/data_hub/schemas/core/relationships/measurements_of_platforms.sql;

SOURCE db/data_hub/schemas/core/relationships/measurements_of_services.sql;

SOURCE db/data_hub/schemas/core/relationships/measurements_of_sources.sql;

COMMIT;

-- Index: You can set up indexes at this stage to improve query speed in the database.
-- Since all tables and relationships have been established, indexes can be added last.
SOURCE db/data_hub/schemas/core/indexes/indexes.sql;

COMMIT;

-- Triggers: Triggers should be added after all tables and relationships have been created.
-- Triggers typically operate on actions performed on tables,
-- so tables and relationships must be established first.
SOURCE db/data_hub/schemas/core/triggers/triggers.sql;

COMMIT;

-- Views: Views are virtual tables derived from existing table data.
-- Therefore, it is more logical to create views after the data and tables are ready.
SOURCE db/data_hub/schemas/core/views/measurements_of_platforms_report.sql;

SOURCE db/data_hub/schemas/core/views/measurements_of_services_report.sql;

SOURCE db/data_hub/schemas/core/views/measurements_of_sources_report.sql;

COMMIT;

-- AUDIT --
SOURCE db/data_hub/schemas/audit/tables/audit_log.sql;
SOURCE db/data_hub/schemas/audit/tables/task_history.sql;
SOURCE db/data_hub/schemas/audit/indexes/audit_indexes.sql;
SOURCE db/data_hub/schemas/audit/triggers/audit_triggers.sql;
SOURCE db/data_hub/schemas/audit/views/audit_views.sql;
