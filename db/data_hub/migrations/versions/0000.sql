-- Migration Script to Create migration_history Table

-- Create a migration tracking table
CREATE TABLE IF NOT EXISTS migration_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    version VARCHAR(255) NOT NULL,
    description TEXT,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM(
        'applied',
        'rolled_back',
        'pending'
    ) DEFAULT 'applied',
    applied_by VARCHAR(255),
    UNIQUE (version)
) COMMENT 'Tracks the history of migrations applied to the database.';