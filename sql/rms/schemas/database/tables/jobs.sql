-- File: jobs.sql
-- Purpose: To store all tasks necessary for achieving specific objectives, which may involve multiple steps or subtasks.
-- ==========================================================================================================

CREATE TABLE jobs (
    job_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each job',
    job_name VARCHAR(100) NOT NULL COMMENT 'Name of the job',
    job_description TEXT DEFAULT NULL COMMENT 'Detailed description of the job',
    job_status ENUM ('pending', 'running', 'completed', 'failed') DEFAULT 'pending' COMMENT 'Current status of the job',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the job was created',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for when the job was last updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store information about jobs and their statuses';
