-- File: data_categories.sql
-- Purpose: Inserting values into the data_categories table
-- ========================================================================================================

INSERT INTO
    data_categories (
        data_category_name,
        data_category_description,
        data_category_schema,
        data_category_reference,
        data_category_recommended_databases,
        schema_type_code
    )
VALUES (
        'Time Series Data',
        'Data points ordered by time; commonly used for statistical analysis and trend observation.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": {"timestamp": "2024-01-01T00:00:00Z", "value": 123}}',
        'InfluxDB, TimescaleDB',
        'TS' -- Compatible with time_series schema_type
    ),
    (
        'Historical Data',
        'Data collected in the past; stored for analysis and trend observation.',
        '{"type": "object", "properties": {"date": {"type": "string", "format": "date"}, "value": {"type": "number"}}}',
        '{"example": {"date": "2024-01-01", "value": 456}}',
        'PostgreSQL, MySQL',
        'HT' -- Compatible with historical schema_type
    ),
    (
        'Real-Time Data',
        'Continuously updating data stream; particularly used for sensor data or social media feeds.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": {"timestamp": "2024-01-01T00:00:00Z", "value": 789}}',
        'Redis, Apache Kafka',
        'RT' -- Compatible with real_time schema_type
    ),
    (
        'Aggregated Data',
        'Data compiled from multiple sources; contains statistical information such as totals and averages.',
        '{"type": "object", "properties": {"aggregate_type": {"type": "string"}, "total": {"type": "number"}, "count": {"type": "integer"}}}',
        '{"example": {"aggregate_type": "sum", "total": 1000, "count": 100}}',
        'ClickHouse, MongoDB',
        'AG' -- Compatible with aggregated schema_type
    ),
    (
        'Categorical Data',
        'Data divided into groups or categories; commonly used for classification purposes.',
        '{"type": "object", "properties": {"category": {"type": "string"}, "count": {"type": "integer"}}}',
        '{"example": {"category": "A", "count": 200}}',
        'Elasticsearch, MongoDB',
        'CD' -- Compatible with categorical schema_type
    ),
    (
        'Textual Data',
        'Unstructured text data; suitable for natural language processing.',
        '{"type": "object", "properties": {"text": {"type": "string"}}}',
        '{"example": {"text": "Sample text data."}}',
        'PostgreSQL, MongoDB',
        'TD' -- Compatible with text_data schema_type
    );
