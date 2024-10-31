-- File: src/migrations/mysql/init.sql
-- Purpose: Initialize the database by creating tables, foreign keys, indexes, views, and inserting initial data.
-- =======================================================================================================

-- Types: It is logical to load fixed values, classifications, and reference data like types in the database first.
-- These tables will later be used as references to other tables with foreign key constraints for data integrity.
SOURCE /docker-entrypoint-initdb.d/types/access_method_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/access_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/country_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/data_format_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/language_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/regions.sql;
SOURCE /docker-entrypoint-initdb.d/types/schema_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/source_types.sql;
SOURCE /docker-entrypoint-initdb.d/types/status_code_types.sql;
COMMIT;

-- Seeds.Types: It is important to insert initial data into the types tables set up initially,
-- to avoid issues with foreign key constraints when adding data to other tables.
SOURCE /docker-entrypoint-initdb.d/seeds/types.access_method_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.access_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.country_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.data_format_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.language_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.regions.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.schema_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.source_types.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/types.status_code_types.sql;
COMMIT;

-- Tables: This is the correct step to create the main tables in the database.
-- The types and seeds.types sections should be loaded up to this point so that
-- the tables can establish foreign key constraints properly.
SOURCE /docker-entrypoint-initdb.d/tables/categories.sql;
SOURCE /docker-entrypoint-initdb.d/tables/data_categories.sql;
SOURCE /docker-entrypoint-initdb.d/tables/data_collections.sql;
SOURCE /docker-entrypoint-initdb.d/tables/jobs.sql;
SOURCE /docker-entrypoint-initdb.d/tables/platforms.sql;
SOURCE /docker-entrypoint-initdb.d/tables/providers.sql;
SOURCE /docker-entrypoint-initdb.d/tables/services.sql;
SOURCE /docker-entrypoint-initdb.d/tables/sources.sql;
SOURCE /docker-entrypoint-initdb.d/tables/tags.sql;
SOURCE /docker-entrypoint-initdb.d/tables/tasks.sql;
COMMIT;

-- Seeds.Table: This step is to load initial data for the previously created tables.
-- When the tables in the Tables section are ready and compliant with foreign key references,
-- you can safely load the initial data.
SOURCE /docker-entrypoint-initdb.d/seeds/categories.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/data_categories.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/data_collections.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/jobs.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/platforms.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/providers.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/services.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/sources.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/tags.sql;
SOURCE /docker-entrypoint-initdb.d/seeds/tasks.sql;
COMMIT;

-- Relationships: This is the right place to define foreign keys or relationships between tables.
-- The relationships section may require all tables and seed data,
-- so it makes sense to establish relationships after loading tables and initial data.
SOURCE /docker-entrypoint-initdb.d/relationships/measurements_of_platforms.sql;
SOURCE /docker-entrypoint-initdb.d/relationships/measurements_of_services.sql;
SOURCE /docker-entrypoint-initdb.d/relationships/measurements_of_sources.sql;
COMMIT;

-- Index: You can set up indexes at this stage to improve query speed in the database.
-- Since all tables and relationships have been established, indexes can be added last.
SOURCE /docker-entrypoint-initdb.d/indexes/indexes.sql;
COMMIT;

-- Triggers: Triggers should be added after all tables and relationships have been created.
-- Triggers typically operate on actions performed on tables,
-- so tables and relationships must be established first.
SOURCE /docker-entrypoint-initdb.d/triggers/triggers.sql;
COMMIT;

-- Views: Views are virtual tables derived from existing table data.
-- Therefore, it is more logical to create views after the data and tables are ready.
SOURCE /docker-entrypoint-initdb.d/views/measurements_of_platforms_report.sql;
SOURCE /docker-entrypoint-initdb.d/views/measurements_of_services_report.sql;
SOURCE /docker-entrypoint-initdb.d/views/measurements_of_sources_report.sql;
COMMIT;

-- -- Migrations: To update, transform, or adapt changes made in the database to new requirements,
-- -- migrations are run at the very end.
-- -- Migrations must work in harmony with all structures and relationships established in previous stages.
-- SET FOREIGN_KEY_CHECKS=0; -- This method disables foreign key constraints
-- SOURCE /docker-entrypoint-initdb.d/migrations/0001.sql;COMMIT;
-- SOURCE /docker-entrypoint-initdb.d/migrations/0002.sql;COMMIT;
-- SOURCE /docker-entrypoint-initdb.d/migrations/0003.sql;COMMIT;
-- SET FOREIGN_KEY_CHECKS=1; -- Only use this command if you are sure you are working with reliable and correct data; otherwise, it may affect data integrity.
