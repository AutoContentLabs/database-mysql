-- File: migrations/0001.sql
-- Purpose: Init
-- =========================================================

-- access_types source_types source_type_code
ALTER TABLE access_types
ADD COLUMN source_type_code INT COMMENT 'Indicates the type of the source (web, database)';

ALTER TABLE access_types
ADD CONSTRAINT fk_access_types_source_types FOREIGN KEY (source_type_code) REFERENCES source_types (source_type_code);

-- data_collections add PARTITION
-- ALTER TABLE data_collections
-- PARTITION BY RANGE (UNIX_TIMESTAMP(collection_date)) (
--     PARTITION p2023 VALUES LESS THAN (UNIX_TIMESTAMP('2024-01-01 00:00:00')) COMMENT 'Partition for data collected in 2023',
--     PARTITION p2024 VALUES LESS THAN (UNIX_TIMESTAMP('2025-01-01 00:00:00')) COMMENT 'Partition for data collected in 2024',
--     PARTITION p2025 VALUES LESS THAN (UNIX_TIMESTAMP('2026-01-01 00:00:00')) COMMENT 'Partition for data collected in 2025',
--     PARTITION p2026 VALUES LESS THAN (MAXVALUE) COMMENT 'Partition for data collected in 2026 and beyond'
-- );

-- data_collections data_categories data_category_id
ALTER TABLE data_collections
ADD COLUMN data_category_id INT COMMENT 'Indicates the category of the data schema (Time Series Basic, Time Series Advanced)';

ALTER TABLE data_collections
ADD CONSTRAINT fk_data_collections_data_categories FOREIGN KEY (data_category_id) REFERENCES data_categories (data_category_id);

-- data_collections sources source_id
ALTER TABLE data_collections
ADD COLUMN source_id INT COMMENT 'Unique identifier for the source of the data';

ALTER TABLE data_collections
ADD CONSTRAINT fk_data_collections_sources FOREIGN KEY (source_id) REFERENCES sources (source_id);

-- platforms status_code_types status_code
ALTER TABLE platforms
-- DEFAULT 1 Because we want to start it immediately.
-- If something happens and it becomes inaccessible, we can change the state.
-- 3 Maintenance mode or if something bad happens, we can change it to 2 Inactive mode.
ADD COLUMN platform_status_code INT NOT NULL DEFAULT 1 COMMENT 'Indicates the status of the platform: 1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended';

ALTER TABLE platforms
ADD CONSTRAINT fk_platforms_status_code_types FOREIGN KEY (platform_status_code) REFERENCES status_code_types (status_code);

-- services status_code_types status_code
ALTER TABLE services
-- DEFAULT 1 Because we want to start it immediately.
-- If something happens and it becomes inaccessible, we can change the state.
-- 3 Maintenance mode or if something bad happens, we can change it to 2 Inactive mode.
ADD COLUMN service_status_code INT NOT NULL DEFAULT 1 COMMENT 'Indicates the status of the service: 1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended';

ALTER TABLE services
ADD CONSTRAINT fk_services_status_code_types FOREIGN KEY (service_status_code) REFERENCES status_code_types (status_code);

-- services platforms platform_id
ALTER TABLE services
ADD COLUMN platform_id INT NOT NULL COMMENT 'The platform for the service';

ALTER TABLE services
ADD CONSTRAINT fk_services_platforms FOREIGN KEY (platform_id) REFERENCES platforms (platform_id);

-- services providers provider_id
ALTER TABLE services
ADD COLUMN provider_id INT NOT NULL COMMENT 'The provider of the service';

ALTER TABLE services
ADD CONSTRAINT fk_services_providers FOREIGN KEY (provider_id) REFERENCES providers (provider_id);

-- services sources source_id
ALTER TABLE services
ADD COLUMN source_id INT NOT NULL COMMENT 'The source of the service';

ALTER TABLE services
ADD CONSTRAINT fk_services_sources FOREIGN KEY (source_id) REFERENCES sources (source_id);

-- services access_method_types access_method_code
ALTER TABLE services
ADD COLUMN access_method_code INT NOT NULL COMMENT '1: free, 2: open_access, 3: subscription';

ALTER TABLE services
ADD CONSTRAINT fk_services_access_method_types FOREIGN KEY (access_method_code) REFERENCES access_method_types (access_method_code);

-- services access_types access_type_code
ALTER TABLE services
ADD COLUMN access_type_code INT NOT NULL COMMENT '1: api, 2: rss, 3: html (scraping)';

ALTER TABLE services
ADD CONSTRAINT fk_services_access_types FOREIGN KEY (access_type_code) REFERENCES access_types (access_type_code);

-- services data_format_types data_format_code
ALTER TABLE services
ADD COLUMN data_format_code INT NOT NULL COMMENT '1: json, 2: xml, 3: csv, 4: html';

ALTER TABLE services
ADD CONSTRAINT fk_services_data_format_types FOREIGN KEY (data_format_code) REFERENCES data_format_types (data_format_code);

-- services country_types country_code
ALTER TABLE services
ADD COLUMN country_code CHAR(2) NOT NULL COMMENT 'Unique ISO 3166-1 alpha-2 country code (e.g., "US", "TR", "CN")';

ALTER TABLE services
ADD CONSTRAINT fk_services_country_types FOREIGN KEY (country_code) REFERENCES country_types (country_code);

-- services regions region_code
ALTER TABLE services
ADD COLUMN region_code CHAR(2) NOT NULL COMMENT 'ISO code for the region (e.g., "EU" for Europe, "ME" for Middle East)';

ALTER TABLE services
ADD CONSTRAINT fk_services_regions FOREIGN KEY (region_code) REFERENCES regions (region_code);

-- services language_types language_code
ALTER TABLE services
ADD COLUMN language_code VARCHAR(5) NOT NULL COMMENT 'ISO 639 standard language code; must be a maximum of 5 characters (e.g., "EN", "TR", "ZH")';

ALTER TABLE services
ADD CONSTRAINT fk_services_language_types FOREIGN KEY (language_code) REFERENCES language_types (language_code);

-- sources status_code_types status_code
ALTER TABLE sources
-- DEFAULT 1 Because we want to start it immediately.
-- If something happens and it becomes inaccessible, we can change the state.
-- 3 Maintenance mode or if something bad happens, we can change it to 2 Inactive mode.
ADD COLUMN source_status_code INT NOT NULL DEFAULT 1 COMMENT 'Indicates the status of the source: 1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended';

ALTER TABLE sources
ADD CONSTRAINT fk_sources_status_code_types FOREIGN KEY (source_status_code) REFERENCES status_code_types (status_code);

-- sources source_types source_type_code
ALTER TABLE sources
ADD COLUMN source_type_code INT NOT NULL COMMENT 'Indicates the code of the source (1: web, 2: database)';

ALTER TABLE sources
ADD CONSTRAINT fk_sources_source_types FOREIGN KEY (source_type_code) REFERENCES source_types (source_type_code);

-- sources data_categories data_category_id
ALTER TABLE sources
ADD COLUMN data_category_id INT NOT NULL COMMENT '1: trend, 2: meteorological, 3: economic, 4: health, 5: demographic, 6: geographic, 7: educational, 8: environmental, 9: technological';

ALTER TABLE sources
ADD CONSTRAINT fk_sources_data_categories FOREIGN KEY (data_category_id) REFERENCES data_categories (data_category_id);

-- data_categories schema_types schema_type_code
ALTER TABLE data_categories
ADD COLUMN schema_type_code INT NOT NULL COMMENT '1: time_series, 2: historical, 3: aggregated, 4: categorical, 5: text';

ALTER TABLE data_categories
ADD CONSTRAINT fk_data_categories_schema_types FOREIGN KEY (schema_type_code) REFERENCES schema_types (schema_type_code);
