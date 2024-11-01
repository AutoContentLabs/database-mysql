-- File: task_history.sql
-- Purpose: To track the history of tasks, including their status, execution times, and any error messages encountered during processing.
-- This table will serve as an audit trail for task execution, aiding in monitoring and troubleshooting.
-- ===============================================================

CREATE TABLE task_history (
    history_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each task history entry',
    task_id INT COMMENT 'Relationship to the main task; references the associated task',
    status VARCHAR(50) COMMENT 'Current status of the task, e.g., completed, failed, in_progress',
    error_message TEXT COMMENT 'Error message details if the task failed or encountered an issue',
    executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of when the task was executed',
    execution_time TIMESTAMP COMMENT 'Duration of task execution, recorded as an interval to measure performance',
    -- Adding an index for faster lookups on task_id, which could be useful for querying task histories
    INDEX idx_task_id (task_id) COMMENT 'Index to optimize queries filtering by task_id'
) COMMENT 'Table to keep track of the history of task executions within the audit schema';
