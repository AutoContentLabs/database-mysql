-- File: migrations/0002.sql
-- Purpose: add services
-- =========================================================

-- services seed

-- Purpose: Insert initial data into the services table
-- INSERT INTO
--     services (
--         service_domain,
--         service_path,
--         service_query
--     )
-- VALUES (
--         'trends.google.com',
--         '/trending/rss',
--         '?geo=US'
--     ),
--     (
--         'trends.google.com',
--         '/trending/rss',
--         '?geo=TR'
--     ),
--     (
--         'api.open-meteo.com',
--         '/v1/forecast',
--         '?latitude=37.7749&longitude=-122.4194&hourly=temperature_2m'
--     ),
--     (
--         'api.open-meteo.com',
--         '/v1/forecast',
--         '?latitude=38.9637&longitude=35.2433&hourly=temperature_2m'
--     );