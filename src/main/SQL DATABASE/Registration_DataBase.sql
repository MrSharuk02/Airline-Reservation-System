-- Create a new database named "Registration"
CREATE DATABASE Registration;

-- Use the "Registration" database
USE Registration;

-- Create a table named "users" with columns for ID, username, password, email, mobile number, OTP, and OTP expiration timestamp
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each user, auto-incremented
    uname VARCHAR(50),                  -- User's name (up to 50 characters)
    upwd VARCHAR(50),                   -- User's password (up to 50 characters)
    uemail VARCHAR(50),                 -- User's email (up to 50 characters)
    umobile VARCHAR(20),                -- User's mobile number (up to 20 characters)
    otp VARCHAR(255),                   -- One-time password (up to 255 characters)
    otp_expiration TIMESTAMP            -- Timestamp for OTP expiration
);

-- Display the structure of the "users" table
DESC users;

-- Display all records from the "users" table
SELECT * FROM users;

-- Truncate all records from the "users" table (keeps the structure, but deletes all data)
TRUNCATE TABLE users;

-- Display all records from the "users" table again to verify truncation
SELECT * FROM users;
