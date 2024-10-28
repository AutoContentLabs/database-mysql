-- File: schema_types.sql
-- Purpose: Inserting values into the schema_types table
-- Inserting values into schema_types table
INSERT INTO
    schema_types (
        schema_type_name,
        schema_type_description,
        schema_type_standard,
        data_category_schema,
        recommended_database
    )
VALUES
    (
        'TrendDataSeries',
        'A time series schema specifically for trend data from various platforms.',
        'ISO 8601',
        JSON_OBJECT (
            'timestamp',
            'datetime',
            'platform',
            'string',
            'trend_score',
            'float',
            'topic',
            'string'
        ),
        'InfluxDB'
    );

INSERT INTO
    schema_types (
        schema_type_name,
        schema_type_description,
        schema_type_standard,
        data_category_schema,
        recommended_database
    )
VALUES
    (
        'BasicTimeSeries',
        'A simple time series schema for regular intervals.',
        'ISO 8601',
        JSON_OBJECT ('timestamp', 'datetime', 'value', 'float'),
        'InfluxDB'
    ),
    (
        'AdvancedTimeSeries',
        'An advanced time series schema including multiple metrics.',
        'ISO 8601',
        JSON_OBJECT (
            'timestamp',
            'datetime',
            'temperature',
            'float',
            'humidity',
            'float',
            'pressure',
            'float'
        ),
        'InfluxDB'
    ),
    (
        'CategoricalData',
        'Schema for data categorized by distinct responses.',
        'N/A',
        JSON_OBJECT ('category', 'string', 'response_count', 'int'),
        'PostgreSQL'
    ),
    (
        'SpatialData',
        'Schema for geospatial data representation.',
        'WGS 84',
        JSON_OBJECT (
            'location',
            'GEOGRAPHY(Point,4326)',
            'value',
            'float'
        ),
        'PostGIS'
    ),
    (
        'FinancialData',
        'Schema for financial transactions data.',
        'N/A',
        JSON_OBJECT (
            'transaction_id',
            'int',
            'amount',
            'decimal',
            'currency',
            'string',
            'transaction_date',
            'datetime',
            'party_id',
            'int'
        ),
        'MySQL'
    ),
    (
        'SensorData',
        'Schema for IoT sensor data representation.',
        'N/A',
        JSON_OBJECT (
            'sensor_id',
            'string',
            'reading_value',
            'float',
            'reading_type',
            'string',
            'timestamp',
            'datetime'
        ),
        'MongoDB'
    ),
    (
        'EngagementData',
        'Schema for social media engagement metrics.',
        'N/A',
        JSON_OBJECT (
            'post_id',
            'string',
            'likes',
            'int',
            'shares',
            'int',
            'comments',
            'int',
            'timestamp',
            'datetime'
        ),
        'Elasticsearch'
    ),
    (
        'PatientData',
        'Schema for healthcare patient records.',
        'N/A',
        JSON_OBJECT (
            'patient_id',
            'int',
            'diagnosis',
            'string',
            'treatment',
            'string',
            'visit_date',
            'datetime'
        ),
        'PostgreSQL'
    ),
    (
        'WebsiteTrafficData',
        'Schema for website traffic analytics including page views and unique visitors.',
        'N/A',
        JSON_OBJECT (
            'date',
            'date',
            'page_views',
            'int',
            'unique_visitors',
            'int'
        ),
        'PostgreSQL'
    );