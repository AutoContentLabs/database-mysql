-- File: foreign_keys.sql
-- Purpose: Define foreign key constraints for maintaining referential integrity in the database.
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Define Foreign Key Constraints
-- ===============================================
-- Foreign key constraint for platform_metrics table
ALTER TABLE platform_metrics ADD CONSTRAINT fk_platform FOREIGN KEY (platform_id) REFERENCES platforms (platform_id);

-- Foreign key constraints for platforms table
ALTER TABLE platforms ADD CONSTRAINT fk_platform_source FOREIGN KEY (source_id) REFERENCES sources (source_id), -- Validates the existence of the source.
ADD CONSTRAINT fk_platform_status FOREIGN KEY (platform_status_id) REFERENCES status_types (status_id);

-- Status type reference
-- Foreign key constraint for service_metrics table
ALTER TABLE service_metrics ADD CONSTRAINT fk_service FOREIGN KEY (service_id) REFERENCES services (service_id);

-- Foreign key constraints for services table
ALTER TABLE services ADD CONSTRAINT fk_service_source FOREIGN KEY (source_id) REFERENCES sources (source_id), -- Source foreign key
ADD CONSTRAINT fk_service_status FOREIGN KEY (service_status_id) REFERENCES status_types (status_id),
ADD CONSTRAINT fk_service_platform FOREIGN KEY (platform_id) REFERENCES platforms (platform_id), -- Platform foreign key
ADD CONSTRAINT fk_service_access_method FOREIGN KEY (access_method_id) REFERENCES access_methods (access_method_id), -- Access method foreign key
ADD CONSTRAINT fk_service_access_type FOREIGN KEY (access_type_id) REFERENCES access_types (access_id), -- Access type foreign key
ADD CONSTRAINT fk_service_data_format FOREIGN KEY (data_format_id) REFERENCES data_formats (data_format_id), -- Data format foreign key
ADD CONSTRAINT fk_service_language FOREIGN KEY (language_code) REFERENCES languages (language_code), -- Language code foreign key
ADD CONSTRAINT fk_service_country FOREIGN KEY (country_code) REFERENCES countries (country_code), -- Country code foreign key
ADD CONSTRAINT fk_service_region FOREIGN KEY (region_code) REFERENCES regions (region_code);

-- Region code foreign key
-- Foreign key constraint for source_metrics table
ALTER TABLE source_metrics ADD CONSTRAINT fk_source_metrics FOREIGN KEY (source_id) REFERENCES sources (source_id), -- Validates the existence of the source.
ADD CONSTRAINT fk_source_metrics_services FOREIGN KEY (service_id) REFERENCES services (service_id);

-- Hizmet Metriği ve İzleme:
-- Foreign key constraints for sources table
ALTER TABLE sources ADD CONSTRAINT fk_provider FOREIGN KEY (provider_id) REFERENCES providers (provider_id) ON DELETE CASCADE, -- Provider foreign key
ADD CONSTRAINT fk_source_status FOREIGN KEY (source_status_id) REFERENCES status_types (status_id), -- Source status foreign key
ADD CONSTRAINT fk_source_type FOREIGN KEY (source_type_id) REFERENCES source_types (source_type_id), -- Source type foreign key
ADD CONSTRAINT fk_service_schema_type FOREIGN KEY (schema_type_id) REFERENCES schema_types (schema_type_id), -- Structure type foreign key
ADD CONSTRAINT fk_service_data_category FOREIGN KEY (data_category_id) REFERENCES data_categories (data_category_id);

-- Structure schema type foreign key
-- Foreign key constraints for source_tags table
ALTER TABLE source_tags ADD CONSTRAINT fk_source_tag FOREIGN KEY (source_id) REFERENCES sources (source_id) ON DELETE CASCADE, -- Source foreign key
ADD CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tags (tag_id) ON DELETE CASCADE;

-- Tag foreign key
-- ===============================================
-- Note:
-- Ensure that referenced tables and fields exist before running this script.
-- Consider indexing foreign key columns for improved query performance.
-- ===============================================