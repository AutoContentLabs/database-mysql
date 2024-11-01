-- File: access_types.sql
-- Purpose: Insert initial data into the access_types table
-- =======================================================================================================

INSERT INTO access_types (
    access_type_name,
    access_type_description
) VALUES
    ('api', 'Source type: web - Application Programming Interface, allows applications to communicate.'),
    ('rss', 'Source type: web - Really Simple Syndication, a web feed format for syndicating content.'),
    ('html', 'Source type: web - Extracting data from websites using automated tools.'),
    ('influxdb', 'Source type: database - Time-series database for real-time analytics.'),
    ('elasticsearch', 'Source type: database - Distributed, RESTful search and analytics engine.'),
    ('mysql', 'Source type: database - Open-source relational database management system.'),
    ('mongo', 'Source type: database - NoSQL database that uses a document-oriented data model.'),
    ('postgresql', 'Source type: database - Open-source object-relational database system.');
