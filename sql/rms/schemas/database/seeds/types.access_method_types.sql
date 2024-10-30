-- File: access_method_types.sql
-- Purpose: Insert initial data into the access_methods table
-- =======================================================================================================

INSERT INTO access_method_types (access_method_name, access_method_description)
VALUES
    ('free', 'Access is available at no cost.'),
    ('open_access', 'Research outputs are freely available without any access restrictions.'),
    ('subscription', 'Access requires a paid subscription.');
