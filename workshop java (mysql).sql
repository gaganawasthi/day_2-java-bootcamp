-- Task 1: Create a new database and table for users

-- Create the 'user_management' database (if it doesn't already exist)
CREATE DATABASE IF NOT EXISTS user_management;

-- Switch to the 'user_management' database
USE user_management;

-- Create the 'users' table (if it doesn't already exist) to manage user balances
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-incrementing user ID
    name VARCHAR(50) NOT NULL,           -- User name
    balance DECIMAL(10, 2) NOT NULL      -- User balance (up to 10 digits, 2 decimal places)
);

-- Task 2: Insert some sample records of different users with balance

-- Insert records for Alice, Bob, Charlie, and Diana
INSERT INTO users (name, balance) VALUES ('Alice', 1500.00);
INSERT INTO users (name, balance) VALUES ('Bob', 2200.50);
INSERT INTO users (name, balance) VALUES ('Charlie', 1800.75);
INSERT INTO users (name, balance) VALUES ('Diana', 950.00);

-- Task 3: Practice basic SQL queries (Insert, Update, Delete, Fetch)

-- Insert a new user record for Eve
INSERT INTO users (name, balance) VALUES ('Eve', 2000.00);

-- Update Alice's balance
UPDATE users SET balance = 2500.00 WHERE name = 'Alice';

-- Delete the record for Diana
DELETE FROM users WHERE name = 'Diana';

-- Fetch and display all user records
SELECT * FROM users;

-- Fetch and display only users with a balance greater than 2000
SELECT * FROM users WHERE balance > 2000;