-- File: tasks.sql
-- Purpose: Insert initial data into the tasks table
-- =========================================================================================================================

INSERT INTO tasks (task_description, task_type, task_scheduled_time)
VALUES
    ('Update weather data from the API', 'update', '2024-10-30 10:00:00'),
    ('Validate trend data from social media', 'check', '2024-10-30 12:00:00'),
    ('Update financial market data', 'update', '2024-10-30 14:00:00'),
    ('Check data integrity for recent collections', 'check', '2024-10-30 16:00:00');