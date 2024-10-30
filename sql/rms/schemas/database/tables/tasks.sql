-- File: tasks.sql
-- Purpose: Represents a smaller, specific part of a job. It defines specific actions or activities required to complete a job. 
-- Tasks are generally shorter and more manageable pieces of work.
-- =========================================================================================================================

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each task',
    task_description TEXT NULL COMMENT 'Description of the task and its purpose',
    task_type ENUM ('update', 'check') NOT NULL COMMENT 'Type of task (''update'' for data updates, ''check'' for validation)',
    task_scheduled_time TIMESTAMP NOT NULL COMMENT 'Scheduled execution time of the task',
    task_status ENUM ('pending', 'completed', 'failed') DEFAULT 'pending' COMMENT 'Current status of the task',
    retry_count INT DEFAULT 0 COMMENT 'Number of retry attempts for failed tasks',
    error_message TEXT NULL COMMENT 'Error message generated if the task fails',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the task was created'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store tasks associated with jobs for data management purposes';

