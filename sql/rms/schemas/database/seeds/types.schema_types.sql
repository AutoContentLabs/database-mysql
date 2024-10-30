-- File: schema_types.sql
-- Purpose: Inserting values into the schema_types table
-- ========================================================================================================

INSERT INTO schema_types (schema_type_name, schema_type_description, schema_type, schema_type_reference)
VALUES
    ('time_series', 'A schema type designed for capturing data points over time, particularly useful for trend analysis.', 
     '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}', 
     '{"example": "Used for stock prices or weather data."}'),

    ('historical', 'A schema type focused on capturing data from the past for analysis and insights.', 
     '{"type": "object", "properties": {"event_date": {"type": "string", "format": "date"}, "data": {"type": "object"}}}', 
     '{"example": "Used for analyzing past sales data."}'),

    ('aggregated', 'A schema type that summarizes multiple data points into a single representation.', 
     '{"type": "object", "properties": {"aggregation_type": {"type": "string"}, "aggregated_value": {"type": "number"}}}', 
     '{"example": "Used for average temperature readings."}'),

    ('categorical', 'A schema type for data that can be divided into distinct categories.', 
     '{"type": "object", "properties": {"category": {"type": "string"}, "count": {"type": "integer"}}}', 
     '{"example": "Used for survey responses or product categories."}'),

    ('text', 'A schema type that handles unstructured text data.', 
     '{"type": "object", "properties": {"text_id": {"type": "string"}, "content": {"type": "string"}}}', 
     '{"example": "Used for reviews or comments."}');