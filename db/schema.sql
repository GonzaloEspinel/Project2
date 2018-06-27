-- Drops the bank_db if it exists currently --
DROP DATABASE IF EXISTS bank_db;

-- Create the schema / Database 
CREATE DATABASE bank_db;
USE bank_db;

-- Create the Customer Table -- 
CREATE TABLE Customer(
    id INT(5) NOT NULL,
    customer_name VARCHAR(45) NOT NULL,
    customer_email VARCHAR(45) NOT NULL,
    customer_phone INT(10) NOT NULL,
    customer_address VARCHAR(45) NOT NULL,
    customer_loginid VARCHAR(45) NOT NULL,
    customer_password VARCHAR(45) NOT NULL,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY (id));

-- Create the Cash Account Table -- 
CREATE TABLE Account(
    id INT(5) NOT NULL,   
    customer_no INT(5) NOT NULL,
    ac_balance DECIMAL(20),
    ac_currency VARCHAR(3) NOT NULL,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,    
    PRIMARY KEY(id));

-- Create the Loan Table --
CREATE TABLE Loan(
    id INT(5) NOT NULL,
    customer_no INT(5) NOT NULL,
    loan_amt DECIMAL(10),
    loan_vdate DATE,
    loan_mdate DATE,
    loan_rate DECIMAL(5),
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,    
    PRIMARY KEY(id));

-- Create the Transaction or Journal Table for recording the transaction.
CREATE TABLE Txnjournal(
    id VARCHAR(15) NOT NULL, 
    txn_date DATE NOT NULL,
    customer_no INT(5) NOT NULL,
    txn_type VARCHAR(20) NOT NULL,
    txn_amt DECIMAL(20) NOT NULL,
    txn_sign VARCHAR(2) NOT NULL,
    createdAt TIMESTAMP,
    updatedAt TIMESTAMP,
    PRIMARY KEY(id));