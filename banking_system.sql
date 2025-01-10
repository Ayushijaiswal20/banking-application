CREATE DATABASE banking_system;

CREATE TABLE users (
    name VARCHAR(100),
    account_number VARCHAR(10) PRIMARY KEY,
    dob DATE,
    city VARCHAR(50),
    password VARCHAR(50),
    balance DECIMAL(10, 2),
    contact VARCHAR(10),
    email VARCHAR(100),
    address TEXT,
    status VARCHAR(10) DEFAULT 'active'
);

CREATE TABLE login (
    account_number VARCHAR(10) PRIMARY KEY,
    password VARCHAR(50)
);

CREATE TABLE transactions (
    account_number VARCHAR(10),
    transaction_type VARCHAR(10),
    amount DECIMAL(10, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="banking_system"
)
