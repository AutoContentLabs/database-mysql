-- File: categories.sql
-- Purpose: To define categories and subcategories for reference in data collection and analysis
-- ===============================================================

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each category',
    parent_id INT DEFAULT NULL COMMENT 'Parent category ID; null for top-level categories',
    title VARCHAR(100) DEFAULT NULL COMMENT 'Title information for the category',
    category_name VARCHAR(100) NOT NULL COMMENT 'Full name of the category',
    category_description TEXT DEFAULT NULL COMMENT 'Detailed description defining the category',
    FOREIGN KEY (parent_id) REFERENCES categories(category_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store categories and subcategories for data analysis';