-- Remove all test data and business tables
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS customers;
DROP DATABASE IF EXISTS banking_crm_lab;

-- Verify cleanup (should return zero)
SHOW DATABASES LIKE 'banking_crm_lab';
