-- File: schema_types.sql
-- Purpose: Inserting values into the schema_types table
-- ========================================================================================================

INSERT INTO
    schema_types (
        schema_type_code,
        schema_type_name,
        schema_type_description,
        schema_type,
        schema_type_reference
    )
VALUES (
        'TS',
        'time_series',
        'Used to organize data points in chronological order; particularly suitable for trend analysis.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": "Commonly used for data such as weather conditions or stock prices."}'
    ),
    (
        'HT',
        'historical',
        'Data collected in the past and used for analysis.',
        '{"type": "object", "properties": {"event_date": {"type": "string", "format": "date"}, "data": {"type": "object"}}}',
        '{"example": "For example, historical sales data."}'
    ),
    (
        'RT',
        'real_time',
        'Real-time data stream; for instance, sensor data or social media feeds.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": "Used to capture immediate events."}'
    ),
    (
        'AG',
        'aggregated',
        'Structure where data collected from multiple sources is combined.',
        '{"type": "object", "properties": {"aggregate_type": {"type": "string"}, "total": {"type": "number"}, "count": {"type": "integer"}}}',
        '{"example": "Can be used for total sales count or average temperature."}'
    ),
    (
        'CD',
        'categorical',
        'Structure where data is divided into specific categories; commonly used for classification.',
        '{"type": "object", "properties": {"category": {"type": "string"}, "count": {"type": "integer"}}}',
        '{"example": "Can be used for product categories and the number of products in each category."}'
    ),
    (
        'TD',
        'text_data',
        'Unstructured text data used for natural language processing.',
        '{"type": "object", "properties": {"text": {"type": "string"}}}',
        '{"example": "Can be used for natural language data such as customer reviews."}'
    );
