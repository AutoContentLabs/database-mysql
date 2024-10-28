-- File: triggers.sql
-- Purpose: Defines triggers for the services table to automatically manage timestamps
-- Author: [Your Name]
-- Date: [Current Date]

DELIMITER //

CREATE TRIGGER update_service_timestamps
BEFORE UPDATE ON services
FOR EACH ROW
BEGIN
    -- Update last_fetched to current timestamp
    SET NEW.last_fetched = CURRENT_TIMESTAMP;

    -- Update next_fetch based on fetch_frequency
    SET NEW.next_fetch = CURRENT_TIMESTAMP + INTERVAL NEW.fetch_frequency SECOND;
END; //

DELIMITER ;
