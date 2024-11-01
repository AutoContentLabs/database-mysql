-- File: jobs.sql
-- Purpose: To store all tasks necessary for achieving specific objectives, which may involve multiple steps or subtasks.
-- This table is essential for managing and tracking jobs that contribute to larger workflows or processes.
-- ==========================================================================================================

CREATE TABLE jobs (
    job_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each job; serves as the primary key for the table',
    job_priority ENUM('high', 'medium', 'low') DEFAULT 'medium' COMMENT 'Job Priority: Indicates the priority level of the job; critical jobs can be processed faster based on this priority',
    service_id INT COMMENT 'Identifier for the associated service; helps to track operations related to specific services. Could also relate to different types of jobs.',
    job_type VARCHAR(25) NOT NULL COMMENT 'Job Type: Distinguishes between different types of jobs, e.g., "data_fetch", "data_process". This allows for better job classification and handling.',
    job_name VARCHAR(50) NOT NULL COMMENT 'Name of the job; provides a concise identifier for the job',
    job_description VARCHAR(255) DEFAULT NULL COMMENT 'Detailed description of the job; offers more context about the jobs purpose and steps involved',
    job_status ENUM('pending', 'running', 'completed', 'failed') DEFAULT 'pending' COMMENT 'Current status of the job; helps in tracking the job’s progress through its lifecycle',
    scheduled_time TIMESTAMP COMMENT 'Scheduled Time: Indicates when the job is planned to be executed; allows for future job scheduling',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the job was created; useful for tracking job creation times',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for when the job was last updated; reflects the most recent modification time'
);
