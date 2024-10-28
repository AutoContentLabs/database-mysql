-- File: data_categories.sql
-- Purpose: Inserting values into the data_categories table
-- Inserting values into data_categories table
INSERT INTO
    data_categories (
        data_category_name,
        data_category_description,
        schema_type_id,
        recommended_database,
        data_category_schema,
        data_category_reference
    )
VALUES
    (
        'Global Trend Data',
        'Real-time trend data collected from various platforms.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'TrendDataSeries'
        ),
        'InfluxDB',
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
        JSON_ARRAY (
            JSON_OBJECT (
                'timestamp',
                '2024-10-28T10:00:00Z',
                'platform',
                'Twitter',
                'trend_score',
                75.5,
                'topic',
                'OpenAI ChatGPT'
            ),
            JSON_OBJECT (
                'timestamp',
                '2024-10-28T10:10:00Z',
                'platform',
                'Google Trends',
                'trend_score',
                68.2,
                'topic',
                'AI Development'
            )
        )
    );

INSERT INTO
    data_categories (
        data_category_name,
        data_category_description,
        schema_type_id,
        data_target_database,
        data_category_schema,
        data_category_reference
    )
VALUES
    -- BasicTimeSeries örneği
    (
        'Daily Temperature Readings',
        'Daily temperature readings for a specific location over time.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'BasicTimeSeries'
        ),
        'InfluxDB',
        JSON_OBJECT ('timestamp', 'datetime', 'value', 'float'),
        JSON_ARRAY (
            JSON_OBJECT (
                'timestamp',
                '2024-01-01T10:00:00Z',
                'value',
                20.5
            ),
            JSON_OBJECT (
                'timestamp',
                '2024-01-02T10:00:00Z',
                'value',
                22.3
            )
        )
    ),
    -- AdvancedTimeSeries örneği
    (
        'Weather Data with Multiple Metrics',
        'Comprehensive weather data with multiple metrics such as temperature, humidity, and pressure.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'AdvancedTimeSeries'
        ),
        'InfluxDB',
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
        JSON_ARRAY (
            JSON_OBJECT (
                'timestamp',
                '2024-01-01T10:00:00Z',
                'temperature',
                15.5,
                'humidity',
                75,
                'pressure',
                1012
            )
        )
    ),
    -- CategoricalData örneği
    (
        'Customer Satisfaction Survey',
        'Data from a customer satisfaction survey with categorical response counts.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'CategoricalData'
        ),
        'PostgreSQL',
        JSON_OBJECT ('category', 'string', 'response_count', 'int'),
        JSON_ARRAY (
            JSON_OBJECT ('category', 'Satisfied', 'response_count', 100),
            JSON_OBJECT ('category', 'Neutral', 'response_count', 50),
            JSON_OBJECT ('category', 'Dissatisfied', 'response_count', 25)
        )
    ),
    -- SpatialData örneği
    (
        'Geospatial Water Quality Data',
        'Water quality data represented in geospatial format.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'SpatialData'
        ),
        'PostGIS',
        JSON_OBJECT (
            'location',
            'GEOGRAPHY(Point,4326)',
            'value',
            'float'
        ),
        JSON_ARRAY (
            JSON_OBJECT (
                'location',
                ST_GeomFromText ('POINT(30 10)', 4326),
                'value',
                7.5
            )
        )
    ),
    -- FinancialData örneği
    (
        'Bank Transaction Data',
        'Data for bank transactions including amounts, currency, and transaction date.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'FinancialData'
        ),
        'MySQL',
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
        JSON_ARRAY (
            JSON_OBJECT (
                'transaction_id',
                1,
                'amount',
                500.00,
                'currency',
                'USD',
                'transaction_date',
                '2024-01-01T10:00:00Z',
                'party_id',
                1001
            )
        )
    ),
    -- SensorData örneği
    (
        'Smart Home Sensor Data',
        'Data from a smart home sensor monitoring temperature and humidity.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'SensorData'
        ),
        'MongoDB',
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
        JSON_ARRAY (
            JSON_OBJECT (
                'sensor_id',
                'sensor_001',
                'reading_value',
                23.7,
                'reading_type',
                'temperature',
                'timestamp',
                '2024-01-01T10:00:00Z'
            )
        )
    ),
    -- EngagementData örneği
    (
        'Social Media Post Engagement',
        'Engagement metrics for a social media post, including likes, shares, and comments.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'EngagementData'
        ),
        'Elasticsearch',
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
        JSON_ARRAY (
            JSON_OBJECT (
                'post_id',
                'post_123',
                'likes',
                200,
                'shares',
                50,
                'comments',
                75,
                'timestamp',
                '2024-01-01T12:00:00Z'
            )
        )
    ),
    -- PatientData örneği
    (
        'Patient Health Records',
        'Health records of patients, including diagnosis and treatment data.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'PatientData'
        ),
        'PostgreSQL',
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
        JSON_ARRAY (
            JSON_OBJECT (
                'patient_id',
                101,
                'diagnosis',
                'Asthma',
                'treatment',
                'Inhaler',
                'visit_date',
                '2024-01-01T10:00:00Z'
            )
        )
    ),
    -- WebsiteTrafficData örneği
    (
        'Website Daily Traffic',
        'Daily traffic data for a website, including page views and unique visitors.',
        (
            SELECT
                schema_type_id
            FROM
                schema_types
            WHERE
                schema_type_name = 'WebsiteTrafficData'
        ),
        'PostgreSQL',
        JSON_OBJECT (
            'date',
            'date',
            'page_views',
            'int',
            'unique_visitors',
            'int'
        ),
        JSON_ARRAY (
            JSON_OBJECT (
                'date',
                '2024-01-01',
                'page_views',
                1500,
                'unique_visitors',
                1200
            )
        )
    );