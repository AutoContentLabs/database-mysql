-- Rollback Script for migration_history Table
-- This script drops the migration_history table if it exists

-- Check if the migration_history table exists and drop it
DROP TABLE IF EXISTS migration_history;