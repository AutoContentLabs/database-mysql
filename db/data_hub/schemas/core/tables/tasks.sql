-- File: tasks.sql
-- Purpose: Represents a smaller, specific part of a job. It defines specific actions or activities required to complete a job.
-- Tasks are generally shorter and more manageable pieces of work.
-- =========================================================================================================================

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each task; serves as the primary key for the table',
    task_description VARCHAR(255) NULL COMMENT 'Description of the task and its purpose; provides details on what the task entails',
    task_type ENUM('update', 'check') NOT NULL COMMENT 'Type of task (''update'' for data updates, ''check'' for validation); other types can be added, e.g., "fetch", "process", "validate"',
    job_id INT COMMENT 'Relationship Link: It is beneficial to establish relational links between tables (e.g., using job_id) to track which tasks are associated with which jobs',
    task_scheduled_time TIMESTAMP NOT NULL COMMENT 'Scheduled execution time of the task; defines when the task is set to run',
    scheduled_interval INT COMMENT 'Scheduled Interval: A column for recurrence interval can be added to allow tasks to repeat at specified time intervals',
    task_status ENUM(
        'pending',
        'completed',
        'failed'
    ) DEFAULT 'pending' COMMENT 'Current status of the task; indicates if the task is pending, completed, or failed',
    retry_count INT DEFAULT 0 COMMENT 'Number of retry attempts for failed tasks; helps track how many times a task has attempted to execute again',
    error_message TEXT NULL COMMENT 'Error message generated if the task fails; provides insight into why the task was unsuccessful',
    execution_time TIMESTAMP COMMENT 'Execution Time Tracking: This field can be used to track how long the task takes to complete; can be stored as an interval',
    notification_preferences TEXT COMMENT 'Notification System: This field can be used to manage notification settings for task completion or failure alerts',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the task was created; automatically set to the current time upon creation'
);