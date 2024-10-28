-- File: src/migrations/mysql/views/report_source_performans.sql
-- Purpose: Create a view for source performance metrics
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
CREATE VIEW
    report_source_performans AS
SELECT
    src.source_id, -- Source's unique identifier
    AVG(sm.query_time) AS avg_query_time, -- Average query time for each source
    SUM(sm.success) AS successful_calls, -- Total number of successful calls for each source
    (SUM(sm.success) / COUNT(sm.metric_id)) * 100 AS success_rate, -- Success rate as a percentage
    MAX(sm.active_status) AS current_status -- Current status of the source (active/inactive)
FROM
    sources src -- Main sources table
    JOIN source_metrics sm ON src.source_id = sm.source_id -- Join with source_metrics
GROUP BY
    src.source_id;

-- Group results by source ID