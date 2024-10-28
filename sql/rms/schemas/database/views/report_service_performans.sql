-- File: src/migrations/mysql/views/report_service_performans.sql
-- Purpose: Create a view for service performance metrics
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
CREATE VIEW
    report_service_performans AS
SELECT
    s.service_id, -- Service's unique identifier
    COUNT(sm.metric_id) AS total_calls, -- Total number of API calls for each service
    AVG(sm.query_time) AS avg_query_time, -- Average query time in seconds for each service
    SUM(sm.success) AS successful_calls, -- Total number of successful API calls
    (SUM(sm.success) / COUNT(sm.metric_id)) * 100 AS success_rate -- Success rate as a percentage
FROM
    services s -- Main services table
    JOIN service_metrics sm ON s.service_id = sm.service_id -- Join with service_metrics
GROUP BY
    s.service_id;

-- Group results by service ID