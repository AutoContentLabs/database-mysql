-- File: src/migrations/mysql/views/report_platform_performans.sql
-- Purpose: Create a view for platform performance metrics
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
CREATE VIEW
    report_platform_performans AS
SELECT
    p.platform_id, -- Platform's unique identifier
    COUNT(pm.metric_id) AS total_calls, -- Total number of API calls for each platform
    AVG(pm.query_time) AS avg_query_time, -- Average query time in seconds for each platform
    SUM(pm.success) AS successful_calls, -- Total number of successful API calls
    (SUM(pm.success) / COUNT(pm.metric_id)) * 100 AS success_rate, -- Success rate as a percentage
    SUM(pm.usage_count) AS total_usage -- Total usage count for each platform
FROM
    platforms p -- Main platform table
    JOIN platform_metrics pm ON p.platform_id = pm.platform_id -- Join with platform_metrics
GROUP BY
    p.platform_id;

-- Group results by platform ID