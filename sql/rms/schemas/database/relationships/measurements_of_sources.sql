-- File: measurements_of_sources.sql
-- Purpose: To store metrics for various data sources
-- =========================================================

CREATE TABLE measurements_of_sources (
    metric_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each source metric measurement',
    source_id INT NOT NULL COMMENT 'References the sources table',
    measurement_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Records the time the measurement was taken',
    metric_value DECIMAL(10, 2) NOT NULL COMMENT 'Value of the metric being measured (e.g., data accuracy, response time)',
    metric_type ENUM('accuracy', 'latency', 'availability', 'other') NOT NULL COMMENT 'Type of the metric being recorded',
    UNIQUE KEY idx_unique_source_time (source_id, measurement_time), -- 'Ensures each source has a unique measurement time entry',
    FOREIGN KEY (source_id) REFERENCES sources(source_id) ON DELETE CASCADE ON UPDATE CASCADE -- 'Establishes a relationship with the sources table, cascading updates and deletes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store various metrics related to data sources';
