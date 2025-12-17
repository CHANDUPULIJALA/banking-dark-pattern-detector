-- Database: bank_dark_pattern

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE transactions (
    txn_id INT PRIMARY KEY,
    customer_id INT,
    txn_date DATE,
    amount DECIMAL(10,2),
    txn_type VARCHAR(10),
    description VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
