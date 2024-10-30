-- File: measurements_of_sources_report.sql
-- Purpose: Create a view for source performance metrics.
-- =======================================================================================================

CREATE VIEW measurements_of_sources_report AS
SELECT
    src.source_id,                         -- Source's unique identifier
    COUNT(sm.metric_id) AS total_calls    -- Total number of calls for each source
FROM
    sources src                           -- Main sources table
    JOIN measurements_of_sources sm ON src.source_id = sm.source_id  -- Join with source metrics
GROUP BY
    src.source_id;                        -- Group by source ID to aggregate metrics
