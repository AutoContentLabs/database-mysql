-- File: platform_metrics.sql
-- Purpose: Insert initial metrics data into the platform_metrics table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Metrics Data into Platform Metrics Table
-- ===============================================
-- Insert initial metrics data into the platform_metrics table
-- INSERT INTO platform_metrics (platform_id, query_time, success, usage_count, timestamp) VALUES
--     (1, 0.123, TRUE, 100, NOW()),
--     (1, 0.456, TRUE, 200, NOW()),
--     (2, 0.789, FALSE, 50, NOW()),
--     (3, 0.321, TRUE, 150, NOW()),
--     (2, 0.654, TRUE, 300, NOW()),
--     (1, 0.213, FALSE, 80, NOW()),
--     (3, 0.987, TRUE, 250, NOW()),
--     (1, 0.111, TRUE, 400, NOW()),
--     (2, 0.222, FALSE, 20, NOW()),
--     (3, 0.333, TRUE, 60, NOW());
-- Additional metrics can be added as needed
-- ===============================================
-- Note:
-- We are thinkink wich metric record is best?
-- INSERT INTO platform_metrics (metric_name, metric_value, metric_date) VALUES
--     ('Daily Active Users', 1000, '2024-10-01'),
--     ('Monthly Active Users', 25000, '2024-10-01'),
--     ('New Signups', 200, '2024-10-01'),
--     ('Churn Rate', 0.05, '2024-10-01'),
--     ('Average Session Duration (mins)', 15, '2024-10-01'),
--     ('Total Revenue ($)', 5000, '2024-10-01'),
--     ('User Engagement Score', 75, '2024-10-01'),
--     ('Content Shares', 300, '2024-10-01'),
--     ('Feedback Ratings', 4.5, '2024-10-01'),
--     ('Page Views', 15000, '2024-10-01');
-- ===============================================