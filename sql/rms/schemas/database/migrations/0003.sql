-- File: migrations/0003.sql
-- Purpose: Draft
-- =========================================================

-- File: data_source_types.sql
-- Purpose: To define various data sources and their characteristics.
-- =======================================================================================================

CREATE TABLE data_source_types (
    data_source_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for the data source type (e.g., news, social media)',
    data_source_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the data source type (e.g., News API, Twitter)',
    data_source_type_description TEXT COMMENT 'Detailed description of the data source type',
    access_type_code INT COMMENT 'Foreign key referencing the access_types table',
    country_code CHAR(2) COMMENT 'Foreign key referencing the country_types table',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Record last update timestamp',
    FOREIGN KEY (access_type_code) REFERENCES access_types(access_type_code),
    FOREIGN KEY (country_code) REFERENCES country_types(country_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table defining various types of data sources available for analysis';

-- Inserting initial data into the data_source_types table
INSERT INTO data_source_types (data_source_type_name, data_source_type_description, access_type_code, country_code) VALUES
    ('Google Trends', 'API for fetching trending search queries and topics.', 1, NULL),
    ('Twitter', 'Social media platform for real-time news and updates.', 1, 'US'),
    ('Reddit', 'Social news aggregation and discussion platform.', 1, 'US'),
    ('News API', 'API to access current news articles from various sources.', 1, NULL),
    ('YouTube', 'Video sharing platform that allows users to upload and share videos.', 1, NULL),
    ('Facebook', 'Social networking site for sharing news and updates.', 1, 'US'),
    ('Instagram', 'Photo and video-sharing social networking service.', 1, 'US'),
    ('TikTok', 'Short-form video hosting service.', 1, 'US'),
    ('Pinterest', 'Image sharing and social media service.', 1, 'US'),
    ('GNews', 'API for accessing news articles from various publishers.', 1, NULL);

-- File: project_types.sql
-- Purpose: To categorize different types of projects within the system.
-- =======================================================================================================

CREATE TABLE project_types (
    project_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for project type; 1: Research, 2: Development, 3: Marketing',
    project_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the project type (e.g., Research, Development, Marketing)',
    project_type_description TEXT COMMENT 'Detailed description of the project type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table defining project types within the system';

-- Inserting initial data into the project_types table
INSERT INTO project_types (project_type_name, project_type_description) VALUES
    ('Research', 'Projects focused on data collection and analysis.'),
    ('Development', 'Projects related to the creation of software or systems.'),
    ('Marketing', 'Projects aimed at promoting products or services.');

-- File: task_status.sql
-- Purpose: To define the various statuses that tasks can have in the system.
-- =======================================================================================================

CREATE TABLE task_status (
    status_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for task status; 1: Not Started, 2: In Progress, 3: Completed',
    status_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the task status (e.g., Not Started, In Progress, Completed)',
    status_description TEXT COMMENT 'Detailed description of the task status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table defining task statuses within the system';

-- Inserting initial data into the task_status table
INSERT INTO task_status (status_name, status_description) VALUES
    ('Not Started', 'Task has not yet been started.'),
    ('In Progress', 'Task is currently being worked on.'),
    ('Completed', 'Task has been completed successfully.');

-- File: task_types.sql
-- Purpose: To define various types of tasks within the system.
-- =======================================================================================================

CREATE TABLE task_types (
    task_type_code INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for task type; 1: Data Collection, 2: Data Analysis, 3: Reporting',
    task_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the task type (e.g., Data Collection, Data Analysis, Reporting)',
    task_type_description TEXT COMMENT 'Detailed description of the task type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table defining task types within the system';

-- Inserting initial data into the task_types table
INSERT INTO task_types (task_type_name, task_type_description) VALUES
    ('Data Collection', 'Tasks related to gathering data from various sources.'),
    ('Data Analysis', 'Tasks focused on analyzing collected data for insights.'),
    ('Reporting', 'Tasks that involve compiling data and analysis into reports.');
