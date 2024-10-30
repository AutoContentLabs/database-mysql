-- File: services.sql
-- Purpose: Insert initial data into the services table
-- =======================================================================================================================

INSERT INTO services (service_domain, service_path, service_query, time_interval, fetch_frequency)
VALUES
    ('api.google.com', '/trends/data', NULL, 0, 300), -- Fetch data from Google Trends every 5 minutes
    ('api.open-meteo.com', '/weather', 'latitude=35.6895&longitude=139.6917', 0, 600), -- Weather data for Tokyo
    ('api.twitter.com', '/statuses/user_timeline', 'screen_name=twitterapi&count=10', 0, 120), -- Fetch user timeline every 2 minutes
    ('api.youtube.com', '/videos', 'part=snippet&chart=mostPopular', 0, 3600); -- Fetch popular videos every hour
