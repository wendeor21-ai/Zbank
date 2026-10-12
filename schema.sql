-- ZeBank Database Schema
-- Run this script in phpMyAdmin or MySQL CLI before launching the application.

CREATE DATABASE IF NOT EXISTS zebank;
USE zebank;

-- 1. Login Authentication Table
CREATE TABLE IF NOT EXISTS login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Default admin account
INSERT INTO login (username, password) VALUES ('admin', '1234');

-- 2. Customer Table
CREATE TABLE IF NOT EXISTS customer (
    cust_id VARCHAR(50) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    address VARCHAR(100),
    branch VARCHAR(50),
    phone VARCHAR(20)
);

-- 3. Branch Table
CREATE TABLE IF NOT EXISTS branch (
    id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(50) NOT NULL
);

INSERT INTO branch (branch_name) VALUES 
('Main Branch'),
('Downtown Branch'),
('Uptown Branch');

-- 4. Account Type Table
CREATE TABLE IF NOT EXISTS Account_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

INSERT INTO Account_type (type_name) VALUES 
('Savings'),
('Checking'),
('Fixed Deposit');

-- 5. Account Table
CREATE TABLE IF NOT EXISTS account (
    acc_id VARCHAR(50) PRIMARY KEY,
    cust_id VARCHAR(50) NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id) ON DELETE CASCADE
);

-- 6. Deposit Transactions Table
CREATE TABLE IF NOT EXISTS deposit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    acc_id VARCHAR(50) NOT NULL,
    cust_id VARCHAR(50) NOT NULL,
    date VARCHAR(50) NOT NULL,
    balance DECIMAL(15,2) NOT NULL,
    deposit DECIMAL(15,2) NOT NULL
);

-- 7. Withdrawal Transactions Table
CREATE TABLE IF NOT EXISTS withdraw (
    id INT AUTO_INCREMENT PRIMARY KEY,
    acc_id VARCHAR(50) NOT NULL,
    cust_id VARCHAR(50) NOT NULL,
    date VARCHAR(50) NOT NULL,
    balance DECIMAL(15,2) NOT NULL,
    withdraw DECIMAL(15,2) NOT NULL
);

-- 8. Fund Transfer Table
CREATE TABLE IF NOT EXISTS transfer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    from_account VARCHAR(50) NOT NULL,
    to_account VARCHAR(50) NOT NULL,
    amount DECIMAL(15,2) NOT NULL
);
